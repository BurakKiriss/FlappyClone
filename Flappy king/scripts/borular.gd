extends StaticBody2D

@onready var down = $"../..//CanvasLayer/down"
@onready var alt = $alt
@onready var üst = $üst
@onready var right = $"../../CanvasLayer/right"

@onready var bolum = $"../.."

var hiz = 500
var kayma = 0

func _physics_process(delta):
	esnemeKontrol()
	
	if Global.basladi:
		position.x -= hiz * delta
	
	if position.x < -219:
		position.x = right.position.x + 418
		kayma = randi_range(-400,400)


func esnemeKontrol():
	alt.size.y = down.position.y
	üst.size.y = position.y
	position.y = down.position.y/2 - kayma
	
	


func _on_skor_body_entered(body):
	if body.name=="bird":
		bolum.skor += 1
		Sounds.get_node("point").play()
		
	if bolum.skor-1 >= Global.high:
		Global.high += 1	
