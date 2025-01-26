extends Sprite3D

@export var card: Card:
	get:
		if not is_node_ready():
			await ready
		return card_2d.card
	set(value):
		if not is_node_ready():
			await ready
		card_2d.card = value
		sub_viewport.render_target_update_mode = SubViewport.UPDATE_ONCE


@onready var sub_viewport: SubViewport = %SubViewport
@onready var card_2d: Card2D = %Card2D
