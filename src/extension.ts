import * as vscode from 'vscode';
import * as path from 'path';
import * as meta from '../package.json';

let addedStubFiles: string[] = []; // Keep track of added stubs
let statusBarItem: vscode.StatusBarItem;

export async function activate(context: vscode.ExtensionContext) {
	console.log('CS2D Lua extension is now active!');

	// Collect the stub file paths
	const stubFiles: string[] = [
		path.join(context.extensionPath, 'stubs/stubs_cs2dlua.lua'),
		path.join(context.extensionPath, 'stubs/stubs_cs2dcore.lua'),
		path.join(context.extensionPath, 'stubs/stubs_cs2dlua_alias.lua'),
	];

	await loadStubRangeAsync(stubFiles);

	vscode.window.showInformationMessage(
		'CS2D Lua entities loaded using Sumneko.lua!\nHappy scripting! ~MT'
	);

	// await addSelectFrameworkCommandAsync(context);
}

export async function deactivate() {
	await unloadStubRangeAsync(addedStubFiles);
}

function getLuaConfig() {
	// Get the Lua configuration
	const luaConfig = vscode.workspace.getConfiguration('Lua');

	return luaConfig;
}

function getLibrary(luaConfig: vscode.WorkspaceConfiguration) {
	// Fetch the current library paths
	const currentLibrary: string[] =
		luaConfig.get<string[]>('workspace.library') || [];

	return currentLibrary;
}

async function loadStubRangeAsync(stubs: string[]) {
	const luaConfig = getLuaConfig();
	const currentLibrary: string[] = getLibrary(luaConfig);

	// Filter stubs to only include those not already in the library
	const stubsToAdd = stubs.filter((stub) => !currentLibrary.includes(stub));

	if (stubsToAdd.length === 0) {
		return;
	}

	// Add the new stubs to the library
	const newLibrary = [...currentLibrary, ...stubsToAdd];

	// Keep track of which files were added
	addedStubFiles.push(...stubsToAdd);

	await updateLibraryAsync(luaConfig, newLibrary);

	console.log(`Loaded stubs: ${stubsToAdd.join(', ')}`);
}

async function unloadStubRangeAsync(stubs: string[]) {
	const luaConfig: vscode.WorkspaceConfiguration = getLuaConfig();
	const currentLibrary: string[] = getLibrary(luaConfig);
	console.log(stubs);
	// Remove all stubs in the range from the current library
	const newLibrary = currentLibrary.filter((path) => !stubs.includes(path));

	updateLibraryAsync(luaConfig, newLibrary);
}

async function updateLibraryAsync(
	luaConfig: vscode.WorkspaceConfiguration,
	newLibrary: string[]
) {
	try {
		// Update the workspace.library setting
		await luaConfig.update(
			'workspace.library',
			newLibrary,
			vscode.ConfigurationTarget.Global
		);

		console.log(`Lua workspace.library updated successfully.`);

		// vscode.window.showInformationMessage(
		// 	'Lua workspace.library updated successfully.'
		// );
	} catch (error) {
		console.error('Failed to update Lua workspace.library:', error);

		// vscode.window.showErrorMessage(
		// 	'Failed to update Lua workspace.library. Check the console for more details.'
		// );
	}
}

async function addSelectFrameworkCommandAsync(
	context: vscode.ExtensionContext
) {
	const selectFrameworkCommand = vscode.commands.registerCommand(
		'cs2d-lua.selectFramework',
		async () => {
			// Get the available framework enum options from package.json configuration
			const frameworkEnum = getFrameworkEnumValues();

			// Fetch current framework from settings
			const configuration =
				vscode.workspace.getConfiguration('cs2d-lua');
			const currentFramework = configuration.get<string>(
				'framework',
				'None'
			); // default to 'None'

			// Generate QuickPick items dynamically based on enum options
			const quickPickItems = frameworkEnum.map((option) => ({
				label: option,
				description: '',
				picked: option === currentFramework, // mark the current setting as selected
			}));

			// Show the selection menu
			const selectedFramework = await vscode.window.showQuickPick(
				quickPickItems,
				{
					placeHolder: 'Select a CS2D framework',
					canPickMany: false,
					ignoreFocusOut: false,
				}
			);

			if (selectedFramework) {
				// Show the selected framework to the user
				vscode.window.showInformationMessage(
					`Now using CS2D framework: ${selectedFramework.label}`
				);

				console.log(
					`Now using CS2D framework: ${selectedFramework.label}`
				);

				// Store the selected framework in settings
				await configuration.update(
					'framework',
					selectedFramework.label,
					vscode.ConfigurationTarget.Global
				);
			}
		}
	);

	context.subscriptions.push(selectFrameworkCommand);

	// Add the command to the status bar (tray)
	statusBarItem = vscode.window.createStatusBarItem(
		vscode.StatusBarAlignment.Right,
		100
	);

	const framework =
		vscode.workspace
			.getConfiguration('cs2dLua')
			.get<string>('framework') || 'None';

	statusBarItem.text = `$(gear) CS2D Framework: ` + framework;
	statusBarItem.command = 'cs2d-lua.selectFramework';
	statusBarItem.tooltip = 'Click to select a CS2D Lua framework';

	statusBarItem.show();

	// Initial update
	onDidChangeConfiguration_Event();

	// Listen for configuration changes
	vscode.workspace.onDidChangeConfiguration((e) => {
		if (e.affectsConfiguration('cs2d-lua.framework')) {
			onDidChangeConfiguration_Event();
		}
	});

	context.subscriptions.push(statusBarItem);
}

function getFrameworkEnumValues(): string[] {
	return meta.default.contributes.configuration.properties[
		'cs2d-lua.framework'
	].enum;
}

function onDidChangeConfiguration_Event() {
	// Update status bar text
	const framework =
		vscode.workspace
			.getConfiguration('cs2d-lua')
			.get<string>('framework') || 'None';

	statusBarItem.text = `$(gear) CS2D Framework: ${framework}`;
}
