class_name ZzPlyClassProvider
extends RefCounted

## Zombie Zone's pack contract (`zz_packs.gd`): this pack adds no weapons or monsters, so it offers no
## rows, and tells the game where its class profiles are.

const ROOT := "res://addons/zz_ply_class_pack/"


static func spawn_entries() -> Array[Dictionary]:
	return []


## A cfg tree whose `game/game-zombie-zone/class/<id>.yml` are the classes. It is the weakest config
## root, so the game's cfg/ and a server's cfg/server/ still override any key.
static func class_cfg_root() -> String:
	return ROOT + "cfg"
