extends Node

@export
var test_scene:PackedScene = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print( "NodePath: ", get_path() )
	print( "Before update: ", multiplayer )
	var exclusive = MultiplayerAPI.create_default_interface()
	get_tree().set_multiplayer( exclusive,get_path() )
	print( "After update: ", multiplayer," it is ok." )
	print()
	await get_tree().create_timer(1).timeout
	var node = test_scene.instantiate()
	add_child(node)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
