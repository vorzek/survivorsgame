extends Node2D

func spawn_powerup():
	var new_powerup = preload("res://power_up.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_powerup.global_position = %PathFollow2D.global_position
	add_child(new_powerup)

func spawn_mob():
	var new_mob =  preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)


func _on_timer_timeout():
	spawn_mob()
	spawn_powerup()

func _on_player_health_depleted():
	%GameOver.visible = true
	%GameOver/ColorRect/Game_Over.show_final_score()
	get_tree().paused = true
