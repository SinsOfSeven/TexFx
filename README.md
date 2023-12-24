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
run = CommandList\TexFx\Transparency.0
;
;	\Transparency.0 (2.9-) Part has no Normal Map
;	\Transparency.1 (3.0+) Part has a Normal Map
```