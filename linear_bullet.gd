extends Bullet

@onready var animation_player = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	animation_player.play("glow_1")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity = get_velocity(delta)
	position += velocity

func get_velocity(delta):
	return Vector2(get_x_velocity(delta), 0)