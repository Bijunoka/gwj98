class_name YStaticSignal extends StaticSignal

func get_spriteframes() -> SpriteFrames:
	return preload("res://assets/sprite_frames/YStaticSignal.tres")

func get_color() -> int:
	return 1

func get_intensity() -> float:
	return intensity/(100.0+abs(delta_pos().y))
