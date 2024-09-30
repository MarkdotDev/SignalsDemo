extends Node2D

signal dynamic_signal(message)

func _ready() -> void:
	call_deferred("emit_signal", "dynamic_signal", "Hello from this dynamic node!")

func _process(delta: float) -> void:
	pass
