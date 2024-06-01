extends Node2D


@export var cloud: PackedScene

@onready var down = $"../CanvasLayer/down"
@onready var right = $"../CanvasLayer/right"


func _ready():
	for i in 10:
		cloudSpawn()

func cloudSpawn():
	var cloud = cloud.instantiate()
	cloud.position= Vector2(randi_range(0,right.position.x+200),randi_range(0,down.position.y))
	var scale = randf_range(0.5,1)
	cloud.scale = Vector2(scale,scale)
	add_child(cloud)
	
