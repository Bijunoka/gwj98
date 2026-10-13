class_name XStaticSignal extends StaticSignal

func get_color() -> int:
	return 0

func get_intensity() -> float:
	return intensity/(100.0+abs(delta_pos().x))
