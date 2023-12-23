# TexFx
> GIMI Texture Extention Shaders

### Usage Notes
```ini
; Better transparency and other Texture controlled effects
; Anime Game Modding Group discord server (https://discord.gg/agmg)
; Blame SinsOfSeven aka. TerminalAide0017 for this attrocity
; Not ready for use in production.

; Example:
[TextureOverrideHead]
hash = 1234abcd
match_first_index = 0
ib = ResourceIB
ps-t0 = ResourceHeadDiffuse
ps-t1 = ResourceHeadLightMap
ps-t69 = ResourceTransparencyMap
run = CommandList\TexFx\ActivateDiscard.0
;
;	\ActivateDiscard.0 (2.9-) Part has no Normal Map
;	\ActivateDiscard.1 (3.0+) Part has a Normal Map
```