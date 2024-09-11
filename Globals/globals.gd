extends Node

var pwin: bool = true;

signal score_change

var PLAYER_SCORE: int = 0:
	set(value):
		PLAYER_SCORE = value;
		emit_signal("score_change");
	get:
		return PLAYER_SCORE;

var ENEMY_SCORE: int = 0:
	set(value):
		ENEMY_SCORE = value;
		emit_signal("score_change");
	get:
		return ENEMY_SCORE;
