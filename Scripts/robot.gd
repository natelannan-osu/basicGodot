extends Node2D
@export var speed: int = 150 #always has to be int
#@export var speed := 150 #always has to be type initially assigned

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#position = Vector2(100,500) #for all instances
	get_node("robotAnimation").position # for this instance



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#position += Vector2(1,0)*50*delta
	#can also map your own keys and buttons in project settings -> input map
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	$robotAnimation.position += direction*speed*delta #for this instance
