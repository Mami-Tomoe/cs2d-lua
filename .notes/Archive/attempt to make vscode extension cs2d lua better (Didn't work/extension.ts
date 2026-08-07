import * as vscode from 'vscode';
import * as path from 'path';

const startupMessage =
	'CS2D Lua entities loaded using Sumneko.lua!\nHappy scripting! ~MT';

let stubFolderPath: string, stubName: string;

export async function activate(context: vscode.ExtensionContext) {
	await removeStaleStubPaths(context); // Legacy.

	[stubFolderPath, stubName] = getDefaultStubs(context); // To be upgraded to support different types?

	loadStubs(stubFolderPath, stubName);

	postMessage(startupMessage);
}

export async function deactivate() {
	unloadStubs(stubFolderPath);
}

function postMessage(message: string) {
	console.log(message);

	vscode.window.showInformationMessage(message);
}

// Removes old outdated stubs from settings.json (global).
// Will be removed in a future release.
async function removeStaleStubPaths(context: vscode.ExtensionContext) {
	const stubPaths = [
		path.join(context.extensionPath, 'stubs', 'stubs_cs2dlua.lua'),
		path.join(context.extensionPath, 'stubs', 'stubs_cs2dcore.lua'),
		path.join(context.extensionPath, 'stubs', 'stubs_cs2dlua_alias.lua'),
	];

	const luaCfg = vscode.workspace.getConfiguration('Lua');
	const current: string[] = luaCfg.get<string[]>('workspace.library') || [];

	const newLibrary = current.filter(
		(p) => !stubPaths.some((stub) => p === stub)
	);

	if (newLibrary.length === current.length) {
		return;
	} // nothing to remove

	try {
		// Use Workspace scope to be less intrusive. Change to Global if you previously wrote to Global.
		await luaCfg.update(
			'workspace.library',
			newLibrary,
			vscode.ConfigurationTarget.Global
		);

		console.log(
			'Removed stale CS2D stub paths from Lua.workspace.library'
		);
	} catch (err) {
		console.warn('Failed to clean Lua.workspace.library:', err);
	}
}

function loadStubs(folderPath: string, name: string) {
	vscode.workspace.updateWorkspaceFolders(
		vscode.workspace.workspaceFolders
			? vscode.workspace.workspaceFolders.length
			: 0,
		null,
		{
			uri: vscode.Uri.file(folderPath),
			name: name,
		}
	);
}

function unloadStubs(folderPath: string) {
	if (folderPath === null || folderPath === '') {
		return;
	}

	const stubFolderUri = vscode.Uri.file(folderPath);

	const index = vscode.workspace.workspaceFolders?.findIndex(
		(f) => f.uri.fsPath === stubFolderUri.fsPath
	);

	if (index !== undefined && index >= 0) {
		vscode.workspace.updateWorkspaceFolders(index, 1);
	}
}

function getDefaultStubs(context: vscode.ExtensionContext) {
	return [path.join(context.extensionPath, 'stubs/'), 'CS2D Lua Stubs'];
}
