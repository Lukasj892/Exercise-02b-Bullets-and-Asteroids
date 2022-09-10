extends Node2D


# Declare member variables here. Examples:
var initial_speed = 3.0
var velocity = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(0,randf()*initial_speed).rotated(randf()*2*PI)

func _physics_process(_delta):
	position = position + velocity
	velocity.x = wrapf(velocity.x, 0, 1024)
	velocity.y = wrapf(velocity.y, 0, 600)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
