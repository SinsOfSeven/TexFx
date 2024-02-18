[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/sinsofseven)

# TexFx
> GIMI Texture Extention Shaders

[GameBanana Link](https://gamebanana.com/mods/485763)

### Usage Notes
```ini
; Better transparency and other Texture controlled effects
; Anime Game Modding Group discord server (https://discord.gg/agmg)
; Blame SinsOfSeven for this attrocity

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
;
;   -- Version 1.03, added shorthand Aliases. --
;   commandlist\texfx\T.0
;   commandlist\texfx\T.1
```

#### Keybindings
Rename `DISABLED_Keybindings.ini`, it is disabled by default to preserve your custom keybindings between updates.

#### Censorship Patch
TexFx conflicts with Silent's ShaderFixes mod, so it includes it's own version.
Press `|` (pipe key) To toggle the censorship patch (Remove Transparency Filter)

#### Hull Hack (Vertex Color Fix)
Hold `|+Shift`to preview the HullHack Effect (Enabled->Disable while holding).
If you prefer the old way, you can add **one** of these commands to your mod. (Alliases)
`run = CommandList\TexFx\SupressHullHack`
`run = commandlist\texfx\suphh`
`$\texfx\hull_hack = 0`

### Troubleshooting

#### If you're having problems with Shader Mods:
Try setting the remaining body parts like this `ps-t69 = null`. You do not need to call the commands, texfx is suppose to do this automatically, but it isn't always able to do it properly, and this can help prevent unexpected behaviors, even with unrelated mods.

The `[Rendering]` setting `cache_shaders` from the `d3dx_overrides.ini` can sometimes prevent shaders from properly reloading. It will drop your FPS drop some when you first visit new areas after installing or updating the mod.

#### If this mod crashes your game:
Please share with me as many details as possible, like what GPU you have, and if you're using the latest GitHub or GameBanana version.
You can leave a comment on GameBanana or make a GitHub Issue.

#### If you have texture issues (wrong textures):
Just try changing which version of the command you're using.
> \Transparency.1 -> \Transparency.0 or the other way around.

#### Incompatible
> [!WARNING]
> Severe: SilentNightSounds [Remove Transparency Filter](https://gamebanana.com/mods/406659)
> This will likely cause transparent parts to be drawn over the original, resulting in no transparency and a slight glow.

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