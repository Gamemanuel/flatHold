extends VBoxContainer
var keyboardMode
var start
var settings
var exit
var click_is_playing
@onready var keyboardAccept = $Main/keyboardAccept

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if keyboardMode != 1:
		if Input.is_action_pressed("d-pad-up") or Input.is_action_pressed("d-pad-down") == true:
			$start.grab_focus()
			keyboardMode = 1

	if start == 1:
		print("1 = start")
		if Input.is_action_just_pressed("a-button") == true:
			$click.play()
			await $click.finished

	if settings == 1:
		print("1 = settings")
		if Input.is_action_just_pressed("a-button") == true:
			$click.play()
			await $click.finished

	if exit == 1:
		print("1 = exit")
		if Input.is_action_just_pressed("a-button") == true:
			$click.play()
			await $click.finished
			get_tree().quit()

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

func _on_start_focus_entered() -> void:
	start = 1
	print("focus_entered")
	
func _on_exit_focus_entered() -> void:
	exit = 1
	print("focus_entered")
	
func _on_settings_focus_entered() -> void:
	settings = 1
	print("focus_entered")
	
func _on_settings_focus_exited() -> void:
	settings = 0
	print("focus_exited")
	
func _on_start_focus_exited() -> void:
	start = 0
	print("focus_exited")
	
func _on_exit_focus_exited() -> void:
	exit = 0
	print("focus_exited")
