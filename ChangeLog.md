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

# Version 1.04 (Planned)
I plan to improve the shading in the next version now that I have fixed some of the stability issues caused by overlapping shader matches.

Start working on the animated and emissive overlay shader.

Update information about the mod.