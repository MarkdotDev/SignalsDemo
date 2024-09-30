extends Node

var dynamic_node = preload("res://DynamicNode.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var new_node = dynamic_node.instantiate()
	add_child(new_node)
	new_node.connect("dynamic_signal", Callable(self, "_on_dynamic_signal"))

	new_node.emit_signal("dynamic_signal", "First message")
	new_node.emit_signal("dynamic_signal", "Second message")

	new_node.disconnect("dynamic_signal", Callable(self, "_on_dynamic_signal"))
	
	new_node.emit_signal("dynamic_signal", "Third message")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_dynamic_signal(message):
	print("Receive message: ", message)
