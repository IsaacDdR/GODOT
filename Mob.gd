extends RigidBody2D

export var min_speed = 150
export var max_speed = 250

var mob_types = ["walk", "swim", "fly"]

func _ready():
	get_node("AnimatedSprite").animation = mob_types[randi() % mob_types.size()]

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_start_game():
	queue_free()