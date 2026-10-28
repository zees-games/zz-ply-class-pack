# zz-ply-class-pack

Zombie Zone's player and stand-in classes as dot-player-class profiles. Data only: `addons/zz_ply_class_pack/cfg/game/game-zombie-zone/class/*.yml` plus `spawn_provider.gd`, whose `class_cfg_root()` is how the game finds them. Read the family [CLAUDE.md](../../CLAUDE.md) and game-zombie-zone's `game/zz_classes.gd`; the suite is game-zombie-zone's `examples/headless_classes.tscn` (`./game.sh --no-parse test headless_classes`).

- A class's numbers are the dot-player-class schema; everything else lives under `extra:` (`models`, `model_mode`, `persona`, `bot_weight`) and is validated by `ZzClasses`, which refuses a bad profile alone.
- Health is relative to the game's `max_health` (100 is the game's). Models are skin ids of the game's `ZzAvatars.SKINS`; add art to the game, not here.
- `survivor` is the default class and must exist; the game has a fallback to its own numbers when the pack is absent.
- Not yet per class: `carry_limit`, `armour`.
