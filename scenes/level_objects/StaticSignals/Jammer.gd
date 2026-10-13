class_name Jammer extends Node2D


@export_range(0, Binding.MONITOR_NB_COLORS - 1) var color: int
var ray_cast: RayCast2D = RayCast2D.new()
var is_jamming: bool

func _ready() -> void:
	process_priority = 1
	add_child(ray_cast)

func _process(_delta: float) -> void:
	ray_cast.target_position = Binding.player.global_position-global_position
	ray_cast.force_raycast_update()
	var ray_is_colliding = ray_cast.is_colliding()
	if is_jamming:
		Binding.monitor_clear(color)
		Binding.monitor_set_wave(0.15+0.1*sin(Time.get_ticks_msec()*0.01), 100, color, 0)
		if ray_is_colliding:
			Binding.monitor_clear(color)
	is_jamming = not ray_is_colliding
