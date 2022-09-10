extends KinematicBody2D


# Declare member variables here. 
var damage = 1
var speed = 500
var velocity = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(0,-speed).rotated(rotation)

func _physics_process(_delta):
	velocity = move_and_slide(velocity, Vector2.UP)


func _on_Timer_timeout():
	queue_free()


func _on_Area2D_body_entered(_body):
	queue_free()
