extends VBoxContainer
var keyboardMode

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if keyboardMode != 1:
		if Input.is_action_pressed("d-pad-up") or Input.is_action_pressed("d-pad-down") == true:
			$start.grab_focus()
			keyboardMode = 1


func _on_start_pressed() -> void:
	$click.play()
	await $click.finished
	pass # Replace with function body.


func _on_settings_pressed() -> void:
	$click.play()
	await $click.finished
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
	$click.play()
	await $click.finished
	get_tree().quit() # When the button is pressed the game exits or quits
