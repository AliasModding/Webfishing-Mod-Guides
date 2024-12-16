extends Node

const ID = "YourAuthorName.YourModName"
onready var Lure = get_node("/root/SulayreLure")

func _ready():
	Lure.add_content(ID, "fishName", "mod://Resources/fishName.tres")
