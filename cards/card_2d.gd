class_name Card2D
extends TextureRect

@export var card: Card:
	set(value):
		if value:
			card = value
			_update_card()


@onready var name_label: Label = %NameLabel
@onready var description_label: Label = %DescriptionLabel
@onready var cost_label: Label = %CostLabel


func _update_card():
	if not is_node_ready():
		await ready

	name_label.text = card.name
	description_label.text = card.description
	cost_label.text = "Cost: %s" % card.cost
