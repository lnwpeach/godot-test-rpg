extends Node

export(int) var max_health = 1 setget set_max_health
var health = max_health setget set_health

signal no_health
signal health_changed(value)
signal health_max_changed(value)

func set_max_health(value):
	max_health = value
	self.health = min(value, max_health)
	emit_signal("health_max_changed", max_health)

func set_health(value):
	health = value
	emit_signal("health_changed", health)
	if health <= 0:
		emit_signal("no_health")

func _ready():
	self.health = max_health
