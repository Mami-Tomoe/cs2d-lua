import * as meta from '../package.json';
let statusBarItem: vscode.StatusBarItem;

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
