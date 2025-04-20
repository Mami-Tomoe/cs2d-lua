# Change Log

All notable changes to the "cs2d-lua" extension will be documented in this file.

## [0.1.2]

### Added

-    Added new hook: `frame`
-    Added new hook: `post_endround`
-    Added missing hook: `connect_attempt`
-    Added missing hook: `connect_initplayer`
-    Added missing hook: `sayteamutf8`
-    Added missing hook: `sayutf8`
-    Added missing hook: `voice`
-    Added missing hook: `oncollision`
-    Added missing hook: `oncollisionhit`
-    Added missing hook: `onhit`
-    Began adding parameter info for some hooks.
-    Added new function: `itemsat`

### Changed

-    Updated `os.info`: No longer deprecated (fixed in CS2D `v1.0.1.5`).
-    Replaced `Sample 1` with just `Sample` when no more than one sample exists.
-    Updated: `imageshadow` to use `shadow_height`.

## [0.1.1]

### Changed

-    Fixed `parse` not accepting commands with parameters as valid.

## [0.1.0]

### Changed

-    Experimental update with experimental features.
-    Extension should now remove the loaded libraries when disabled.

## [0.0.9]

### Changed

-    Fixed an issue where `stubs_cs2dlua_alias.lua` would not load.
-    Fixed improper formatting in the load message.

## [0.0.8]

### Changed

-    Updated `README.md`.
-    Updated `stubs_cs2dlua.lua`: Aliases and definitions from `stubs_cs2dlua_alias.lua`.
-    Updated `stubs_cs2dlua_alias.lua`: Aliases and definitions for `stubs_cs2dlua.lua`.

## [0.0.7]

### Changed

-    Updated `README.md`.

## Removed

-    `CREDITS.md`

## [0.0.6]

### Added

-    Created `CREDITS.md`.
-    Created `stubs_cs2dlua_alias.lua`: Aliases and definitions for `stubs_cs2dlua.lua`.

### Changed

-    Updated `README.md`.
-    Updated `stubs_cs2dlua.lua`: Aliases and definitions from `stubs_cs2dlua_alias.lua`.

## [0.0.5]

### Changed

-    Updated `README.md`.

## [0.0.4]

### Changed

-    Updated `stubs_cs2dlua.lua`, first major step is complete. Next changes are going to mostly aim at improving the current stubs.
-    Updated `LICENSE.md`.

## [0.0.3]

### Added

-    Created `LICENSE.md`.

### Changed

-    Updated extension properties (icon, description)
-    Updated `README.md` albeit, not complete.
-    Updated `CHANGELOG.md`.

## [0.0.2]

### Added

-    `stubs_cs2dcore.lua`: Stubs for `io` and `os` CS2D functions.

### Changed

-    Updated `stubs_cs2dlua.lua`.

## [0.0.1]

-    Initial release with `stubs_cs2dlua.lua`.
