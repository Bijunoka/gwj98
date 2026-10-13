extends Node

const MONITOR_NB_COLORS = 3
const MONITOR_WAVE_PER_COLOR = 2
var monitor: Object
var player: CharacterBody2D

func monitor_set_wave(wave_range: float, frequency: float, color_i: int, wave_i: int) -> void:
	monitor.set_wave(wave_range, frequency, color_i, wave_i)

func monitor_clear(color) -> void:
	monitor.clear(color)
