[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/sinsofseven)

# TexFx
> GIMI Texture Extention Shaders

[GameBanana Link](https://gamebanana.com/mods/485763)

### Usage Notes
TexFx textures encode effects in the ps-t69 and ps-t70 slot.

#### Config.ini
Inside the TexFx folder, there is a config.ini change some major settings which can impact some mods. 

The `$uncensor` setting can be set to `0/1/2` where `0` enables the "Remove Transparency Filter" effect, disabling the Mosaic Censor entirely, `1`, which will behave as the game originally did, and `2` which will disable the Censor till the camera enters the body. `2` is the default, for the best gameplay experience. (Planned, Add a UI toggle or Enabled Keybinding for this option.) This default is subject to change.

The `$seizure` setting can be set to 1 or 0 to prevent mods which might have flashing or strobing effects with RGB. Please make sure to review this setting if you do or don't want it. It is set to `1` on by default. (Genshin Already warns Photosensitive users).

#### TexFx Custom Outlines (t70):
> Thanks to Annplan for Sponsoring this feature!

The RGB channels will be directly assigned to the outline color if there is a texture in ps-t70. Applicable to Characters, Weapons, NPCs, Monsters and More!
Alpha below 50% will discard the outlines.

```ini
[TextureOverrideFavoniusGreatsword]
hash = 945cd6d3
match_priority = 0
ps-t70 = ResourceFaveSwordOutline

[ResourceFaveSwordOutline]
filename = FaveSwordOutline.dds
```


#### TexFx Effects Mask (t69):

Transparency (Opacity) on the RED channel

Emissives (Brightness) on the GREEN channel

Bloom Intensity (Glow) on the BLUE channel.

HSV Shift on the ALPHA channel.

Channel | Value |Effect
:-      |:-     |:-
RGBA    | 0     | Do nothing
Red     | 1-254 | Transparent
Red     | 255   | Discard (Skip Rendering)
Green   | 1-255 | Shadow - Bright
Blue    | 1-255 | Bloom
Alpha   | 1-63  | Variable Color Replace


`$\TexFx\glow_intesity` and `$\TexFx\bloom_intesity` may be used to change the intesity of Green and Blue, or `$\TexFx\hue`, `$\TexFx\sat`, `$\TexFx\val` of the Alpha lower segment.

`$\TexFx\alpha` will be treated as the red channel when no texture is set in `ps-t69`.

```ini
; Example:
[TextureOverrideHead]
hash = 1234abcd
match_first_index = 0
ib = ResourceIB
ps-t0 = ResourceHeadNormalMap
ps-t1 = ResourceHeadDiffuse
ps-t2 = ResourceHeadLightMap
ps-t69 = ResourceTexFxMap
run = CommandList\TexFx\Transparency
;run = commandlist\texfx\T
```

#### TexFx for Components (OutfitCompiler/XXMI Exports)
`hic_sunt_dracones/ComponentFriendlyBuiltinShaders.ini`
This introduces some new concepts that allow us to use TexFx in a new and exciting way, we can use it to create "Materials" or "Sub Parts" like a pair of sunglasses which which can have thier own draw passes! We can create other custom shaders and effects, but for now I've included two default ones which use normal TexFx behavior.

The syntax is verbose, but it's a price we must pay for power.

```ini
; Use Example
if $Hood == 1
    ps-t0 = ResourceDiffuse
    ps-t1 = ResoourceLightmap
    ps-t69 = ResourceTexFxMask
    $\TexFx\_1 = <DRAWINDEX>
    $\TexFx\_2 = <DRAWOFFSET>
    run = CommandList\TexFx\Component
;   run = commandlist\texfx\C
endif
```

```ini
; Notable TexFx Words and Aliases.

;Used to set transparency in the place of a Texture Mask.
$\TexFx\alpha
; To multiply your Green and Blue Channels
; note, the 2nd options are shorthands.
$\TexFx\bloom_intesity
$\TexFx\bloom
$\TexFx\glow_intesity
$\TexFx\glow
; TexFx Alpha Channel, Variable Color Replace.
$\TexFx\hue
$\TexFx\sat
$\TexFx\val
; TexFx version number
$\TexFx\version
; Draw Indexed Carriers for Components
$\TexFx\_1
$\TexFx\_2
$\TexFx\_3

; TexFx CommandLists for Default Transparency.
run = CommandList\TexFx\T
run = CommandList\TexFx\Transparency

; TexFx CommandLists for Default Component based Transparency.
run = CommandList\TexFx\C
run = CommandList\TexFx\Component

; Force Outlines for Transparency On/Off.
run = CommandList\TexFx\FO.E
run = CommandList\TexFx\FO.Enable
run = CommandList\TexFx\ForceOutline.Enable
run = CommandList\TexFx\FO.D
run = CommandList\TexFx\FO.Disable
run = CommandList\TexFx\ForceOutline.Disable

; Force Back Face Transparency On/Off.
run = CommandListBFT.E
run = CommandListBFT.Enable
run = CommandListBackFaceTransparency.Enable
run = CommandListBFT.D
run = CommandListBFT.Disable
run = CommandListBackFaceTransparency.Disable
```
[link](#batch-command-usage)

#### Keybindings
Rename `DISABLED_Keybindings.ini`, it is disabled by default to preserve your custom keybindings between updates. If you're using XXMI, you will also need to edit the `DISABLED_Includes.ini` but don't remove the `DISABLED` word, just uncomment the the lines for `Keybindings.ini`

XXMI Users may copy it into their Mods folder.

#### Censorship Patch
TexFx conflicts with Silent's ShaderFixes mod, so it includes it's own version.
Press `CTRL+F7` To toggle the censorship patch (Remove Transparency Filter)

### Troubleshooting

#### If you're having problems with Shader Mods:
Try setting the remaining body parts like this `ps-t69 = null`. You do not need to call the commands, texfx is suppose to do this automatically, but it isn't always able to do it properly, and this can help prevent unexpected behaviors, even with unrelated mods. In 4.5 there is a known issue with some mods in the some menus which can be fixed with this.

**Removed** ~~The `[Rendering]` setting `cache_shaders` from the `d3dx_overrides.ini` can sometimes prevent shaders from properly reloading. It will drop your FPS drop some when you first visit new areas after installing or updating the mod.~~

~~You may also clear your ShaderFixes folder of unwanted shaders. If experienceing issues, you can rename this folder and reload to see if it replairs the issue. In which case you may investigate further.~~

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

#### Recommended
[ORFix](https://github.com/leotorrez/LeoTools/blob/main/releases/ORFix.ini)
[Underwater Uncensor](https://gamebanana.com/mods/462790)

### Extensions
Extensions are add-on type mods that are intended to be used with TexFx Main, but will not guarantee compatibility between versions. For example, I already regret the name of the first extension, because the numbers are backwards for the name. The exensions folder `denn_die_todten_reiten_schnell` may be renamed in the near future as well.

The intent is to allow anyone to make extensions for the main mod. This could include new effect shaders, new pre-made effects, or utilities. As I add features this should be a lot more appealing, but for now I have just added a very early example and the first utility mod.

#### Int Opacity (Deprecated)

> [!TIP]
> This has been replaced with `$\TexFx\alpha`.

The `int_opacity` extension is zipped in `denn_die_todten_reiten_schnell`
Just unzip and it will enable the following commands. (Requires Main)
```ini
; X is any number from 0-255, 
; 0.X and 1.X follow the same convention as TexFx.
run = CommandList\int_opacity\0.X
run = CommandList\int_opacity\1.X
```

### Batch Command Usage
TexFx version 1.066 provides endpoints for modders to build their own transparecny stack, which is highly effective for heavy toggle workflows. This is an alternate for Components, if you would need to write many instead of a few.
```ini
[TextureOverrideLaylaDress]
hash = 8ec3c0d8
match_first_index = 66474

; Run TexFx Layers
run = CommandListBatchTexFxLaylaDress
; Run Original Layers
run = CommandListLaylaDress

[CommandListBatchTexFxLaylaDress]
; We need to initialize TexFx with Batch.Pre
run = CommandList\TexFx\Batch.Pre
; This will set $\TexFx\internal_control when needed
if $\TexFx\internal_control
    ; We need to set some flags
    run = CommandList\TexFx\SetFlags
    ; run = CommandList\TexFx\SetInstanceValues

    ; CustomShaders have a silly restriction that they have to have
    ; the Draw Calls inside them.
    run = CustomShaderLaylaDressBack
    run = CustomShaderLaylaDressFront
    ; Alternatively, you we can just use 
    ; this to get a decent result with none
    ; of the funny custom shaders.
    ; run = CommandList\TexFx\Prepare.F
    ; run = CommandListLaylaDress

    ; Finally we need to Dismantle the TexFx driver
    ; otherwise your game won't feel so good.
    run = CommandList\TexFx\Batch.Post
endif


[CustomShaderLaylaDressBack]
cull = back
front = Clockwise
run = CommandList\TexFx\Prepare.B
run = CommandListLaylaDress

[CustomShaderLaylaDressFront]
cull = back
front = CounterClockwise
run = CommandList\TexFx\Prepare.F
run = CommandListLaylaDress

; This is basically just the unmoddified contents of the
; original LaylaDress section, but we added 
; [CommandListLaylaDress] to line after the hash and match.
[CommandListLaylaDress]
ib = ResourceLaylaDressIB
ps-t0 = ResourceLaylaDressNormalMap
if $ColourDress == 0
	ps-t1 = ResourceLaylaDressDiffuse
	ps-t2 = ResourceLaylaDressLightMap
endif
if $ColourDress == 1
	ps-t1 = ResourceLaylaDressDiffusepink
	ps-t2 = ResourceLaylaDressLightMappink
endif
ps-t69 = ResourceLaylaDressMask
run = CommandList\global\ORFix\ORFix
drawindexed = 14973, 0, 0
if $ring == 1
	drawindexed = 1092, 14973, 0
	if $flower == 1
		drawindexed = 2280, 16065, 0
	endif
endif
if $skirt1 == 1
	drawindexed = 1707, 18345, 0
	if $skirt2 == 1
		drawindexed = 1128, 20052, 0
	endif
endif
```