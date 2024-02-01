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

# Version 1.03 (Done):
Hull hack (VS shader Vetex Color substitution to remove outline offset.) Prevents obvious edges.
Hull hack toggle (mostly for debugging)
> Ctrl + PIPE
Hull hack supress (for styling)
> run = CommandList\TexFx\SupressHullHack
ORFix patch (runs Transparency.0 instead of .1 with new ORFix only.)
Keybind to disable texfx
restructured some code.


# Version 1.04 (Planned)
I plan to improve the shading in the next version now that I have fixed some of the stability issues caused by overlapping shader matches.

Start working on the animated emissive overlay shader.