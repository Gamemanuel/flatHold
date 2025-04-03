extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	pass # Replace with function body.


func _on_settings_pressed() -> void:
	pass
	#get_tree().change_scene_to_file()
	#
	#var simultaneous_scene = preload("res://levels/level2.tscn").instantiate()
#
	#func _add_a_scene_manually():
		## This is like autoloading the scene, only
		## it happens after already loading the main scene.
		#get_tree().root.add_child(simultaneous_scene)


func _on_exit_pressed() -> void:
	get_tree().quit() # When the button is pressed the game exits or quits
