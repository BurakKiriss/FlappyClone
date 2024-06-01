extends CharacterBody2D


@export var ziplamaGucu:int = 50
@export var yerCekimi:int = 50
@onready var down = $"../CanvasLayer/down"
@onready var boruses = $"../boruses"
@onready var message = $"../Message"


func _physics_process(delta):
	
	if Global.basladi:
		velocity.y += yerCekimi * delta
	
	if Input.is_action_just_pressed("mouseLeft"):
		Global.basladi = true
		message.visible = false
		Sounds.get_node("flysound").play()
		velocity.y = -ziplamaGucu
		
	
	
	move_and_slide()
	
	death()
	
func death():
	if position.y > down.position.y + 56 or position.x<=-35:
		Global.basladi = false
		Sounds.get_node("boruses").play()
		message.visible = true
		get_tree().reload_current_scene()
		
	
		
