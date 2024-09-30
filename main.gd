extends Node2D

signal my_custom_signal(p1, p2)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("my_custom_signal", Callable(self, "_on_my_custom_signal"))
	emit_signal("my_custom_signal", "Hello", "World")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_my_custom_signal(p1, p2):
	print("Received signal with: ", p1, " and ", p2)

func _on_button_pressed() -> void:
	print("I was clicked")
