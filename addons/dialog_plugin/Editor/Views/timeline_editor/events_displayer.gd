tool
extends Container

# Lo cree para gestionar los eventos que iban a ser añadidos
# bajo la promesa de Drag&Drop.
# Puede ser añadido a cualquier contenedor


signal save()

var timeline_resource:DialogTimelineResource

var last_selected_node:DialogEditorEventNode

var separator_node:Control = HSeparator.new()

var loading_events:bool = false

func _ready() -> void:
	separator_node.mouse_filter = Control.MOUSE_FILTER_IGNORE
	separator_node.rect_min_size = Vector2(0, 8)


func add_event(event:DialogEventResource, in_place:int=-1) -> void:
	
	var _events:Array = timeline_resource.events.get_resources()

	if in_place != -1:
		_events.insert(in_place, event)
	else:
		_events.append(event)
	
	emit_signal("save")
	force_reload()


func _exit_tree() -> void:
	if (is_instance_valid(separator_node)) and (not separator_node.is_inside_tree()):
		separator_node.free()
	

func unload_events():
	for child in get_children():
		if child == separator_node:
			continue
		child.queue_free()


func load_events():
	loading_events = true
	var event_node:DialogEditorEventNode = null
	var _events:Array = timeline_resource.events.get_resources()
	var _err:int
	for event_idx in _events.size():
		var event:DialogEventResource = _events[event_idx] as DialogEventResource
		event_node = event.get_event_editor_node()
		_err = event_node.connect("focus_entered", self, "_on_EventNode_selected")
		assert(_err == OK)
		_err = event_node.connect("focus_exited", self, "_on_EventNode_deselected")
		assert(_err == OK)
		_err = event_node.connect("deletion_requested", self, "_on_EventNode_deletion_requested")
		assert(_err == OK)
		_err = event_node.connect("save_item_requested", self, "_on_EventNode_save_item_requested")
		assert(_err == OK)
		_err = event_node.connect("timeline_requested", self, "_on_EventNode_timeline_requested")
		assert(_err == OK)
		_err = event_node.connect("event_being_dragged", self, "_on_event_being_dragged")
		assert(_err == OK)
		add_child(event_node)
		event_node.idx = event_idx
	
	loading_events = false


func force_reload() -> void:
	unload_events()
	load_events()


func _on_EventNode_selected(event_node:DialogEditorEventNode=null) -> void:
	if not event_node:
		return
	
	last_selected_node = event_node


func _on_EventNode_deselected(event_node:DialogEditorEventNode=null) -> void:
	if not event_node:
		return
	var _focus_owner = get_focus_owner()
	if _focus_owner and _focus_owner is DialogEditorEventNode:
		if event_node == last_selected_node:
			last_selected_node = null


func _on_EventNode_deletion_requested(event_resource:DialogEventResource=null) -> void:
	if not event_resource:
		return
	
	var _events:Array = timeline_resource.events.get_resources()
	_events.erase(event_resource)
	emit_signal("save")
	force_reload()


func _on_EventNode_save_item_requested(event_resource:DialogEventResource) -> void:
	if not loading_events:
		emit_signal("save")


func _on_EventNode_timeline_requested(node:DialogEditorEventNode) -> void:
	node.timeline_resource = timeline_resource


######################
#    DRAG AND DROP   #
######################

var _null_counter:int = -1
var _last_valid_node:Node = null
var _detection_offset:Vector2 = Vector2(0, 8)

# Used for debug purposes
#func _draw() -> void:
#	draw_line(get_local_mouse_position(), get_local_mouse_position()+_detection_offset*2, Color.red, 2)
#	draw_line(get_local_mouse_position(), get_local_mouse_position()+_detection_offset*-2, Color.blue, 2)
#	if is_instance_valid(_last_valid_node):
#		draw_rect(_last_valid_node.get_rect(), Color.green, false, 2)

func can_drop_data(position, data):
	if not (data is Dictionary):
		return false
	
	if "preview_node" in data:
		if not data.preview_node.is_connected("tree_exited", self, "set"):
			data.preview_node.connect("tree_exited", self, "set", ["custom_constants/separation", 0], CONNECT_ONESHOT)
			data.preview_node.connect("tree_exited", self, "remove_child", [separator_node], CONNECT_ONESHOT)
	
	if not separator_node.is_inside_tree():
		add_child(separator_node)
	
	var _near_node:Node = get_near_node_to_position(position)
	if _near_node:
		if _near_node != separator_node:
			_last_valid_node = _near_node
			move_child(separator_node, _near_node.idx)
		_null_counter = -1
	elif _null_counter > _detection_offset.y*2:
		_last_valid_node = null
		separator_node.raise()
	else:
		_null_counter += 1
	
	return data.get("event", null) is DialogEventResource


func drop_data(position, data):
	if is_instance_valid(_last_valid_node):
		add_event(data["event"], _last_valid_node.idx)
	else:
		add_event(data["event"])
	
	emit_signal("save")


func get_near_node_to_position(position:Vector2, offset:Vector2=_detection_offset) -> Node:
	var _near_node:Node = null
	for node in get_children():
		
		if node.get_rect().has_point(position+offset):
			_near_node = node
			break
		elif node.get_rect().has_point(position-offset):
			_near_node = node
			break
	
	return _near_node


func _on_event_being_dragged() -> void:
	set("custom_constants/separation", _detection_offset.y*2)
	
	for child in get_children():
		child = child as Node
		if child.has_method("_on_event_being_dragged"):
			child._on_event_being_dragged()
