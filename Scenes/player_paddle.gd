extends CharacterBody2D

var SPEED: int = 1000;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_collide(velocity)
	if Input.is_action_pressed("Up"):
		position.y += -SPEED * delta;
	if Input.is_action_pressed("Down"):
		position.y += SPEED * delta;
