extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print( "NodePath: ", get_path() )
	print( "Before update: ", multiplayer )
	var exclusive = MultiplayerAPI.create_default_interface()
	get_tree().set_multiplayer( exclusive,get_path() )
	print( "After update: ", multiplayer," but it doesn't change." )
	print()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
