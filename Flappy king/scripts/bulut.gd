extends Sprite2D


var hiz

@onready var right = $"../../CanvasLayer/right"
@onready var down = $"../../CanvasLayer/down"




func _ready():
	hiz = randi_range(150,250)
	
	
func _physics_process(delta):
	
	position.x -= hiz * delta
	
	if position.x <= -200:
		position.x = right.position.x + 200
		position.y = randi_range(0,down.position.y)	
