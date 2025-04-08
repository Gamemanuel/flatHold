extends Control

@onready var keyboardAccept = $keyboardAccept

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var stylebox_flat := StyleBoxFlat.new()
	$buttonHolder/start.disabled = true
	$buttonHolder/settings.disabled = true
	$buttonHolder/exit.disabled = true
	
	process_mode = Node.PROCESS_MODE_PAUSABLE
	get_tree().paused = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
