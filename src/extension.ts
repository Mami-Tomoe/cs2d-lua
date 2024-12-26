import * as vscode from 'vscode';
import * as path from 'path';

export function activate(context: vscode.ExtensionContext) {
	console.log('CS2D Lua extension is now active!');

	// Collect the stub file paths
	const stubFiles: string[] = [
		path.join(context.extensionPath, 'stubs/stubs_cs2dlua.lua'),
		path.join(context.extensionPath, 'stubs/stubs_cs2dcore.lua'),
	];

	// Get the Lua configuration
	const luaConfig = vscode.workspace.getConfiguration('Lua');

	// Fetch the current library paths
	const currentLibrary: string[] =
		luaConfig.get<string[]>('workspace.library') || [];

	// Combine existing libraries with the new stub files while avoiding duplicates
	const updatedLibrary = [
		...currentLibrary,
		...stubFiles.filter((stub) => !currentLibrary.includes(stub)),
	];

	// Update the workspace.library setting
	luaConfig
		.update(
			'workspace.library',
			updatedLibrary,
			vscode.ConfigurationTarget.Global
		)
		.then(
			() => {
				console.log(
					`Lua workspace.library updated successfully with: ${updatedLibrary}`
				);
			},
			(error) => {
				console.error(
					'Failed to update Lua workspace.library:',
					error
				);
			}
		);

	// Optionally, display a message to the user about this change
	vscode.window.showInformationMessage(
		'CS2D Lua documentation loaded for `Sumneko.lua`!\nHappy scripting! ~MT'
	);
}

export function deactivate() {}
