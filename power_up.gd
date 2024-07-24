extends Area2D

var number_of_powerups = 0

func _physics_process(delta):
	var entity_in_range = get_overlapping_bodies()
	if entity_in_range.size() > 0:
		queue_free()
		number_of_powerups += 1

