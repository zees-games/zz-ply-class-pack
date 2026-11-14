# zz-ply-class-pack

Player and bot classes for Zombie Zone, as [dot-player-class](https://github.com/modcommunity/dot-player-class) profiles. The pack is data only: six classes, each with health, speed, sprint and stamina, a loadout, a bot persona and one or more person models.

| Class | Loadout |
| --- | --- |
| Survivor | none set, so the game default |
| Medic | `zz_pistol`, `zz_knife` |
| Scout | `zz_smg`, `zz_knife` |
| Heavy | `zz_shotgun`, `zz_knife` |
| Hunter | `zz_m4`, `zz_knife` |
| Looter | `zz_revolver`, `zz_knife` |

The weapons are from [zz-modern-weapons](https://github.com/zees-games/zz-modern-weapons).

## Using it

Zombie Zone's pack scan finds the pack through `addons/zz_ply_class_pack/spawn_provider.gd`, whose `class_cfg_root()` names `addons/zz_ply_class_pack/cfg`. That is the weakest config root: a server's `cfg/` or `cfg/server/game/game-zombie-zone/class/<id>.yml` overrides any key, and the workbench edits the same files.

`zz_class_default` names the class everybody starts as (`survivor`). With `zz_class_select 1` a player can run `zz_class <id> [model]`, limited by `zz_class_allowed`. More in game-zombie-zone's `docs/operators.md`.

## A class file

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
  bot_weight: 1              # how often stand-ins pick it
```

The class files are in `addons/zz_ply_class_pack/cfg/game/game-zombie-zone/class/`. They also set `description`, `stamina_drain`, `stamina_recover`, `jump_scale` and `selectable`.

## Credits

No art is vendored. The models are the six people already in Zombie Zone, built from Kenney's Blocky Characters. The profiles are original work. See [CREDITS.md](CREDITS.md).

| Asset | Author | Licence |
| --- | --- | --- |
| Person models (`skin_a` to `skin_k`) | [Kenney](https://kenney.nl/assets/blocky-characters), Blocky Characters | CC0 1.0 |
| Class profiles and code | TMC | MIT, see [LICENSE](LICENSE) |
