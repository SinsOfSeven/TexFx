# Version 1.02
Starting in version 1.02, there will be a new global variable `$\TexFx\version`. I have made several fixes which will improve stability and remove some known issue, and I have created the first optional extention.
## Additions
- Version global `$\TexFx\version` == 1.02
- First Extention `Int Opacity`
- Keybind `|` to toggle the Censorship patch.
## Fixes
- Fix a bug where Red = 1 would cause gaps in the effect
- Fixed overlaping outline and diffuse matches in the shader regex.
## Removed
- Removed some bloat from the files.

# Version 1.03
This version is some extra polish ontop of `1.02`. It fixes so small issues, and adds some QoL features.

## Additions
- Added "HullHack" feature to adjust vertex colors which mess with the transparency.
- Added `run = CommandList\TexFx\SupHH`to Supress this feature per mod part.
- Added More Keybindings to control TexFx, and makes them easier to customize. `DISABLED_Keybindings.ini`
- Added `commandlist\texfx\t.0` & `commandlist\texfx\t.1`as Aliases.

## Fixes
- ORFix (for 4.4) patch, this will fix wrong textures.
- Offset fix (HullHack broke Offset + Transparency mods).

## Removed or Refactored
- Renamed several values and functions for clarity (Modesty -> Uncensor)
- Moved the Setting for `cache_shaders` to a seperate file `d3dx_overrides.ini`.

# Version 1.035

## Fixes
- Fixed texture flickering caused by the transparency shader not being cleaned up.
- Changed the Texture detection method from Alpha Value to Texture Size ( > 0).

# Version 1.04

## Additions
- Added CC-BY-SA 4.0 Licence
- Added `ComponentFriendlyBuiltinShaders.ini` (README)
- Added the first iteration of Emissives Shading (README)

## Adjustments
- Adjusted Populationg IniParams

## Deprecated
- Int_Opacity is deprecated in favor of my Virtual Textures.

# Version 1.041

## Fixes
- Fixed an issue were a rouge `.` instead of `\.` in my regex was causing crashes in some situations.
- Fixed an issue where the keybind to disable the mod was not toggling back on.

# Version 1.042

## Additions
- Blue channel of `ps-t69`now controls bloom intencity.

# Version 1.05 (Planned)
Shadow Shading and a default UV Animation that doesn't suck.
Change HullHack to use different CustomShaders instead of passing the information to the vertex shader.