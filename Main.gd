extends Node2D

export (PackedScene) var Mob
var score

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()# Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_MobTimer_timeout():
	pass # Replace with function body.


func _on_ScoreTimer_timeout():
	score += 1



func _on_StartTimer_timeout():
	$MobTimer.start()
	$StartTimer.start()
	
