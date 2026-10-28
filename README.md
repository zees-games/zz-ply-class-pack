# zz-ply-class-pack

Player and stand-in classes for Zombie Zone, as [dot-player-class](../dot-player-class) profiles. A data-only pack: six classes (survivor, medic, scout, heavy, hunter, looter), each with health, speed, sprint and stamina, a loadout, a bot persona and one or more person models.

A pack is found by Zombie Zone's pack scan through `addons/zz_ply_class_pack/spawn_provider.gd`, whose `class_cfg_root()` names `addons/zz_ply_class_pack/cfg`. That tree is the weakest config root: a server's `cfg/` or `cfg/server/game/game-zombie-zone/class/<id>.yml` overrides any key, and the workbench edits the same files.

## A class

```yaml
name: Scout
health: 80            # 100 is the game's max_health
speed: 1.1
sprint_speed_scale: 1.3
loadout: zz_smg,zz_knife
extra:
  models: [skin_b, skin_e]   # the game's six people: skin_a b c e f k
  model_mode: select         # random (each spawn), select (the player picks), first
  persona: scout             # the bot persona a stand-in of this class acts as
  bot_weight: 1              # how often stand-ins draw it
```

`zz_class_default` names the class everybody starts as (`survivor`); `zz_class_select 1` lets a player run `zz_class <id> [model]`, limited by `zz_class_allowed`. Details: game-zombie-zone `docs/operators.md`.

## Art and credits

No art is vendored. The models are the six people already in Zombie Zone, built from Kenney's character kit (CC0, https://kenney.nl/assets/blocky-characters). `assets/licence.json` records that and the pack's own licence (MIT) for the CDN.
