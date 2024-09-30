extends Node

signal node_a_signal(message)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	call_deferred("emit_signal", "node_a_signal", "Hello from Node A!")
