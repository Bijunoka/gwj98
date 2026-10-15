@abstract class_name StaticSignal extends Node2D

@export_range(0, 50) var intensity: float
@export_range(20, 100) var frequency: float
@export_range(0, Binding.MONITOR_WAVE_PER_COLOR - 1) var chanel: int
@export var target_pos: Vector2
var ray_cast: RayCast2D = RayCast2D.new()

func _ready() -> void:
	var sprite: AnimatedSprite2D = AnimatedSprite2D.new()
	sprite.sprite_frames = get_spriteframes()
	add_child(sprite)
	add_child(ray_cast)

func player_pos() -> Vector2: return Binding.player.global_position
func delta_pos() -> Vector2: return player_pos()-target_pos

func _process(_delta: float) -> void:
	ray_cast.target_position = player_pos()-global_position
	ray_cast.force_raycast_update()
	if ray_cast.is_colliding():
		Binding.monitor_set_wave(0.0, 0.0, get_color(), chanel)
	else:
		Binding.monitor_set_wave(get_intensity(), get_frequency(), get_color(), chanel)

@abstract func get_color() -> int
@abstract func get_spriteframes() -> SpriteFrames
func get_intensity() -> float: return intensity
func get_frequency() -> float: return frequency
