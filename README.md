# TexFx
> GIMI Texture Extention Shaders

### Usage Notes
```ini
; Better transparency and other Texture controlled effects
; Anime Game Modding Group discord server (https://discord.gg/agmg)
; Blame SinsOfSeven aka. TerminalAide0017 for this attrocity

; Example:
[TextureOverrideHead]
hash = 1234abcd
match_first_index = 0
ib = ResourceIB
ps-t0 = ResourceHeadDiffuse
ps-t1 = ResourceHeadLightMap
ps-t69 = ResourceTransparencyMap
run = CommandList\TexFx\Transparency.1
;   \Transparency.0 (2.9-) Part has no Normal Map
;   \Transparency.1 (3.0+) Part has a Normal Map

; Jan 4th, ORFix patch, use latest from
; https://github.com/LeoTorreZ/LeoTools
run = CommandList\global\ORFix\ORFix
```

### Troubleshooting
This mod enables the `[Rendering]` setting `cache_shaders` from the `Main.ini`
This can sometimes prevent shaders from properly reloading.
It also greatly decreases the reload times after a reload.


### Compatability
Compatable with most mods, may break with some shader mods.

[ORFix](https://github.com/leotorrez/LeoTools/blob/main/releases/ORFix.ini)

#### Incompatible
Severe: SilentNightSounds [Remove Transparency Filter](https://gamebanana.com/mods/406659)
- This will likely cause transparent parts to be drawn over the original, resulting in no transparency and a slight glow.

### Extensions
Extensions are add-on type mods that are intended to be used with TexFx Main, but will not guarantee compatibility between versions. For example, I already regret the name of the first extension, because the numbers are backwards for the name. The exensions folder `denn_die_todten_reiten_schnell` may be renamed in the near future as well.

The intent is to allow anyone to make extensions for the main mod. This could include new effect shaders, new pre-made effects, or utilities. As I add features this should be a lot more appealing, but for now I have just added a very early example and the first utility mod.

#### Int Opacity
The `int_opacity` extension is zipped in `denn_die_todten_reiten_schnell`
Just unzip and it will enable the following commands. (Requires Main)
```ini
; X is any number from 0-255, 
; 0.X and 1.X follow the same convention as TexFx.
run = CommandList\int_opacity\0.X
run = CommandList\int_opacity\1.X
```