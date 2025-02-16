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
- Blue channel of `ps-t69`now controls bloom.

# Version 1.043

## Additions
- `$\TexFx\bloom_intesity` and `$\TexFx\glow_intesity` added to make changing the values of bloom and glow easier.
- More Aliases! (README.md)

## Refactor
- HullHack Refactored to use different custom shaders when supressed.
- CommandLists to simplify component style calls. `CommandList\TexFx\Component.0`

# Version 1.045
## Additions
- Added CheckTextureOverride `ps-t4`,`ps-t5` to diffuse shader.
- Added Custom Outline colors `ps-t70`, Thanks Annplan for sponsoring this feature!

## Fixes
- Updated VertexShader HullHack to 4.6

# Version 1.046
## Fixes
- Fixed issues with 3.0+ versions of the shader
- Fixed uncensor for Transparency for 4.6

## Additions
- PS support for 3.4 - 4.5

# Version 1.05
## Breaking
- Changes transparent parts to have outlines by default. Will lightly impact the look of existing mods.
    - This can result in some existing mods looking opaque (possibly due to normal direction).
- Tenatively changed how glow and emissives are calculated to prevent them from being darkened. 
    - This will result in existing mods with glow to appear brighter.

## Additions
- Tried to make the readme more informative. ♥
- Added Config.ini to help store user settings.
- Added commands to allow modders to force a mod for outline transparency to on or off
- Added a key binding to toggle the outlines for transparent parts mode.
- Added a key binding to toggle the "Seizure" setting on and off.
- Tenatively added ~~RGB~~ HSV Masking to the Alpha Channel of TexFx t69 Mask.
    - This may result in improperly setup old mods displaying black.
    - Alpha Channel values BELOW 64 will activate this new effect.
    - ~~`$\texfx\r`, `$\texfx\g`, `$\texfx\b` to control the Alpha Channel Mask color override.~~
    - `$\texfx\hue`, `$\texfx\sat`, `$\texfx\val` to control the Alpha Channel Mask color override.

## Removed
- Removed `d3dx_overrides.ini`, I recommend Ctrl+Del the `ShaderCache` Folder, be careful not to delete files like this often.

## Fixes
- Fixed handling of variables to reset themselves properly. (might impact existing mods which were improperly setup.)
- Fixed Component shaders to have outlines when they lacked them before.
- Fixed Shaders 5.0 (transparency broken on Natlan Chars)

## Refactoring
- Adjusted how some values are handled internally.
- Moved user configurable values to the top of the Main.ini (hopefully this makes it easier to edit without keybindings).

# Version 1.051
## Hotfix
- Added Math\cos as a local function.
- Reverted Outline Mode to OFF by Default
- Enabled Lighting Effects by Default

## Version 1.05104
### Fixes
- Fixed AMD Crashing
- Fixed Natlan Transparency
- Fixed ORFix Sync Issues (update ORFix plox)
- Changed Default Keybinding to F7 + Modifiers
- Added commandlists for natlan version of all the texfx commands.
- Added Backface UV support
- Added new Uncensor Mode, changed it to default.

## Version 1.05108
### Hotfix
- Rolled back glow through transparency effect till 1.052.
- Removed Hull Hack from Natlan Shaders (Unneeded and broken.)

### Updates
- Updated documentation for accuracy.

## Version 1.05109
### Fix
Broken Outlines

# TODO (1.052)
- Fix the unfinish Glow/Bloom Transfer (glow through transparency)

## Version 1.054
### Fixes
- Repaired Existing Features
- Could not repair censorship correctly
- Now defaults to uncensored until a solution is made.
- Natlan characters seem to be functional, didn't test all cases.

### Known issues
- Some transparencies will not work properly as the characters load in.
- This also affects custom outline colors, will look for a solution. (LOD Shaders)
- Intel Integrated graphics glow effects are still malfunctioning, will look into it.