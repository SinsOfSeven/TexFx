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