extends Node2D

var scored: bool = false;
var ball_scene = preload("res://Scenes/ball.tscn")

func _ready():
	pass

func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	if body.is_in_group("Ball"):
		print("entered")
		Globals.pwin = true;
		body.queue_free()
		$NewBallTimer.start()
		# increase player score
		Globals.PLAYER_SCORE += 1;

func _on_area_2d_2_body_entered(body):
	if body.is_in_group("Ball"):
		print("entered")
		Globals.pwin = false;
		body.queue_free()
		$NewBallTimer.start()
		# increase enemy score
		Globals.ENEMY_SCORE += 1;

func _on_new_ball_timer_timeout():
	print("spawn new")
	var ball = ball_scene.instantiate()
	add_child(ball)
	ball.position = $BallStartPos.position

