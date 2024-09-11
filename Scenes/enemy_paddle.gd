extends CharacterBody2D

var SPEED: int = 600;
var SHIFT: bool = true;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_collide(velocity)
	if SHIFT:
		position.y += -SPEED * delta;
	if !SHIFT:
		position.y += SPEED * delta;

func _on_shift_area_body_entered(body):
	if body.is_in_group("Bounds"):
		if SHIFT:
			SHIFT = false;
		elif !SHIFT:
			SHIFT = true;
