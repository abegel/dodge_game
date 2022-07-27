extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.playing = true
	
	#gets the list of Animation names from the frames 
	#	property (walk, fly, swim)
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	
	#picks a ranomd number between 0 and 2 (three total choices, 0 counts as
	#	as a number!) and then selects an integer between 0 and n-1
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
