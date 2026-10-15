class_name XStaticSignal extends StaticSignal

func get_spriteframes() -> SpriteFrames:
	return preload("res://assets/sprite_frames/XStaticSignal.tres")

func get_color() -> int:
	return 0

func get_intensity() -> float:
	return intensity/(100.0+abs(delta_pos().x))
