extends Control

signal retried

@onready var time : = $CenterContainer/Column/Time

func initialize(total_play_time : float) -> void:
	var minutes : String = str(int(total_play_time / 60.0))
	var seconds : String = str(int(fmod(total_play_time, 60.0)))
	var time_text = "Total time: %s m %s s" %[minutes, seconds]
	time.text = time_text
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	show()

func _on_try_again_pressed():
	emit_signal("retried")


func _on_exit_pressed():
	get_tree().quit() # Quits game

