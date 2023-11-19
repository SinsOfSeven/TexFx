# TexFx
> GIMI Texture Extention Shaders

### Usage Notes
```ini
; Better transparency and other Texture controlled effects
; Anime Game Modding Group discord server (https://discord.gg/agmg)
; Blame sinsofseven for this attrocity
; Not ready for use in production.

; Example:
[TextureOverrideLaylaHead]
hash = b617aa07
match_first_index = 0
ib = ResourceLaylaHeadIB
ps-t0 = ResourceLaylaHeadDiffuse
ps-t1 = ResourceLaylaHeadLightMap
ps-t69 = ResourceTransparencyMap
run = CommandList\TexFx\ActivateDiscard.0
;
;	\ActivateDiscard.0 (2.9-)
;	\ActivateDiscard.1 (3.0+)
```

### Regex Notes
```ini
[CommandList]
x = rt_width
y = rt_height
z70 = 420

[ShaderRegex]
shader_model = ps_5_0
temps = RESOLUTION INIPARAMS_70

[ShaderRegex.Declarations]
dcl_resource_texture1d (float,float,float,float) t120

[ShaderRegex.Match]
(?s)(?P<GROUPNAME>.*?matchme)

[ShaderRegex.Replace]
${GROUPNAME}\n
ld_indexable(texture1d)(float,float,float,float) ${RESOLUTION}.xyzw, l(0,0,0,0), t120.xyzw\n
ld_indexable(texture1d)(float,float,float,float) ${INIPARAMS_70}.xyzw, l(70,70,70,70), t120.xyzw\n
//comments can be added like this.\n
add r99.xy, ${RESOLUTION}.xy, l(1920,1080)\n
discard_z r99.xy\n
//discard if RT HeightxWidth is 1920x1080\n

```