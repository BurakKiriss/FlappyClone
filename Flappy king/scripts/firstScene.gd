extends Node2D

@onready var right = $CanvasLayer/right
@onready var down = $CanvasLayer/down
@onready var sky = $sky
@onready var skoryazici = $CanvasLayer/skoryazici
@onready var highscore = $CanvasLayer/highscore
@onready var point = $point
@onready var message = $Message


var skor = 0


func _ready():
	message.visible = true
	
func _physics_process(delta):
	sky.scale = Vector2(right.position.x / 720, down.position.y / 1280)
	skoryazici.text = str(skor)
	highscore.text = "best score: " + str(Global.high)
	
	if Global.basladi == false and Input.is_action_just_pressed("f") and Input.is_action_just_pressed("y"):
		Sounds.get_node("love").play()
	
	
