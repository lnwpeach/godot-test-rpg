extends AnimatedSprite

onready var animatedSprite = $AnimatedSprite

func _ready():
	self.connect("animation_finished", self, "_on_AnimatedSprite_finished")
	play("Animate")

func _on_AnimatedSprite_finished():
	queue_free()
