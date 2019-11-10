extends CanvasLayer

signal start_game

func _ready():
	pass # Replace with function body.

func show_message(text):
	get_node("MessageLabel").text = text 
	get_node("MessageLabel").show()
	get_node("MessageTimer").start()

func show_game_over():
	show_message("Game over")
	yield(get_node("MessageTimer"), "timeout")
	get_node("MessageLabel").text = "Ponte sabroso \npapi!"
	get_node("MessageLabel").show()
	yield(get_tree().create_timer(1), 'timeout')
	get_node("StartButton").show()

	
func update_score(score):
	get_node("ScoreLabel").text = str(score)
	
	
func _on_StartButton_pressed():
	get_node("StartButton").hide()
	emit_signal("start_game")


func _on_MessageTimer_timeout():
	get_node("MessageLabel").hide()



