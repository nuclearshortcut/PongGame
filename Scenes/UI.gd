extends CanvasLayer

func _ready():
	Globals.connect("score_change", _update_enemy_score_text);
	Globals.connect("score_change", _update_player_score_text);

func _process(delta):
	pass

func _update_enemy_score_text():
	$Score/HBoxContainer/EnemyScore.text = str(Globals.ENEMY_SCORE);

func _update_player_score_text():
	$Score/HBoxContainer/PlayerScore.text = str(Globals.PLAYER_SCORE);
