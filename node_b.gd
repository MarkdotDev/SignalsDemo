extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var node_a = get_node("../NodeA")
	node_a.connect("node_a_signal", Callable(self, "_on_node_a_signal"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_node_a_signal(message):
	print("Node b received: ", message)
