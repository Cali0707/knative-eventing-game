extends Area2D

#var audio_player = $AudioStreamPlayer

var audio_player

func _ready():
	audio_player = $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _input_event(viewport, event, shape_idx):
	if event.is_pressed() and ConveyerController.selected != null:
		self.on_click()

func on_click():
	print("hey")
	audio_player.play()
	ConveyerController.destination = get_parent()
	transfer_box()

func transfer_box():
	print("sending")
	ConveyerController.create_conveyor()
	#draw_line(ConveyerController.selected.get_global_position(), get_global_position(), Color.GREEN)
