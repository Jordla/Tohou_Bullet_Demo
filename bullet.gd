extends Area2D
class_name Bullet
@onready var sprite_2d = $Sprite2D
@onready var lifespan_timer = $LifespanTimer


var time : float
var speed : float = 500.0
var velocity : Vector2

var deceleration : float
var ease_curve : float
var eased_value : float

var life_time: float = 1.0 

func _physics_process(delta):
	pass

func get_x_velocity(delta):
	return speed * delta

func get_y_velocity(delta):
	pass

func get_velocity(delta):
	pass

func move_bullet(delta):
	position += transform.x * speed * delta

func decelerate(delta):
	velocity.x = move_toward(velocity.x, 0, delta * deceleration * eased_value)
	eased_value = ease(time / life_time, ease_curve) #-3.2

func count_time(delta):
	time += delta

func set_lifetime(time : float):
	pass

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func _on_timer_timeout():
	queue_free()
