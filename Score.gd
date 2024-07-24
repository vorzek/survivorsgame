extends Label


var score = 0

func increment_score():
	score += 1
	text = "Score: " + str(score)
