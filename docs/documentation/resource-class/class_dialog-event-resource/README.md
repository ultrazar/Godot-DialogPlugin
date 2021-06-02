---
description: Base class for all dialog events.
---

# DialogEventResource

**Inherits:** [Resource](https://docs.godotengine.org/es/stable/classes/class_resource.html)

**Inherited by:** DialogTextEvent, [DialogCharacterEvent](dialogcharacterevent.md), DialogWaitTimeEvent, DialogJumpToEvent, DialogChangeTimelineEvent, DialogCustomEvent

## Description

Every dialog event relies on this class. If you want to do your own event, you should `extend` this class.

{% tabs %}
{% tab title="Properties" %}
| Type | Name | Default |
| :--- | :--- | :--- |
| [bool](https://docs.godotengine.org/es/stable/classes/class_bool.html) | skip | `false` |
| [String](https://docs.godotengine.org/es/stable/classes/class_string.html) | event\_editor\_scene\_path | `"res://addons/dialog_plugin/Nodes/editor_event_nodes/event_node_template.tscn"` |
| [DialogBaseNode](../../node-class/class_dialog-base-node/) | \_caller | `null` |

### Property Descriptions

#### [bool](https://docs.godotengine.org/es/stable/classes/class_bool.html) skip <a id="property-skip"></a>

Determines if the event will go to next event inmediatly or not. If skip is true, the next event will be executed after thie event ends.



#### [String](https://docs.godotengine.org/es/stable/classes/class_string.html) event\_editor\_scene\_path

The editor scene path to be used in the timeline editor.



#### [DialogBaseNode](../../node-class/class_dialog-base-node/) \_caller

The caller node of this event.
{% endtab %}

{% tab title="Methods" %}
| Type | Name |
| :--- | :--- |
| void | execute \( [DialogBaseNode ](../../node-class/class_dialog-base-node/)caller \) |
| void | finish \( [bool](https://docs.godotengine.org/es/stable/classes/class_bool.html) skip=false \) |
| [DialogEditorEventNode](../../node-class/class_dialog-editor-event-node.md) | get\_editor\_node \( \) |
{% endtab %}

{% tab title="Signals" %}
### •  event\_started \( event\_resource\)

Emmited when the event starts.  
The signal is emmited with the event resource `event_resource`.

### •  event\_finished \( event\_resource, jump\_to\_next\_event \)

Emmited when the event finish.   
The signal is emmited with the event resource `event_resource` and a `bool` value `jump_to_next_event`.
{% endtab %}

{% tab title="Constants" %}
### TranslationService

TranslationService object, used to translate text in the editor and export CSV files.

### VARIABLES\_PATH

Path of the saved variables resource.
{% endtab %}
{% endtabs %}

## Method Descriptions

### •  void  execute \( [DialogBaseNode ](../../node-class/class_dialog-base-node/)caller \)

Executes the event behaviour.

### •  void  finish \(  [bool](https://docs.godotengine.org/es/stable/classes/class_bool.html) skip=false \)

Ends the event behaviour.

### •  [DialogEditorEventNode](../../node-class/class_dialog-editor-event-node.md)  get\_editor\_node \( \)

Returns the [DialogEditorEventNode ](../../node-class/class_dialog-editor-event-node.md)defined on `event_editor_scene_path`.



