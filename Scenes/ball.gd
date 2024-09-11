extends RigidBody2D

var direction: int = 0;

var ball_speed = Vector2(600, 600)

func _ready():
	if (Globals.pwin):
		direction = 1;
		print("player win")
	elif (!Globals.pwin):
		direction = -1;
		print("enemy win")
		

func _physics_process(delta):
	var collision_info = move_and_collide(ball_speed * direction * delta)
	if collision_info:
		ball_speed = ball_speed.bounce(collision_info.get_normal())
