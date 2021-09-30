---
description: Base class for all timeline resources.
---

# DialogTimelineResource

**Inherits:** [Resource](https://docs.godotengine.org/es/stable/classes/class_resource.html)

### Related Tutorials:

{% page-ref page="../../getting-started/creating-a-timeline.md" %}

{% page-ref page="../../getting-started/using-the-timeline-in-game.md" %}

## Description

{% tabs %}
{% tab title="Properties" %}
| Type | Name | Description |
| :--- | :--- | :--- |
| [Array](https://docs.godotengine.org/es/stable/classes/class_array.html) | events | Events of this timeline. |
| [int](https://docs.godotengine.org/es/stable/classes/class_int.html) | current\_event | The current `event` of the timeline. |
| [Array](https://docs.godotengine.org/es/stable/classes/class_array.html) | `_related_characters` | Array of [CharacterResource](class_dialog-character-resource.md)s related to this timeline. |
{% endtab %}

{% tab title="Methods" %}
| Type | Name |
| :--- | :--- |
| void | \`\`[`start`](class_dialog-timeline-resource.md#start-dialogbasenode-caller) \( [DialogBaseNode ](../node-class/class_dialog-base-node/)caller\) |
| void | \`\`[`go_to_next_event`](class_dialog-timeline-resource.md#go_to_next_event-dialogbasenode-caller)\( [DialogBaseNode ](../node-class/class_dialog-base-node/)caller \) |
| void | `add_event` \([DialogEventResource](class_dialog-event-resource/) event, Int at\_position = -1\) |
| void | `remove_event` \([DialogEventResource](class_dialog-event-resource/) event\) |
{% endtab %}

{% tab title="Signals" %}
### •  timeline\_ended

Emmited when the timeline ends.
{% endtab %}
{% endtabs %}

## Method Descriptions

### •  start \( [DialogBaseNode ](../node-class/class_dialog-base-node/)caller\)

Execute the `current_event` in `events`.

### •  go\_to\_next\_event \( [DialogBaseNode ](../node-class/class_dialog-base-node/)caller \)

Try to execute the next event in `events`. If there are no more events, `timeline_ended` signal is emmited.

### •  add\_event \([DialogEventResource](class_dialog-event-resource/) event, Int at\_position = -1\)

Add an event to `events`

### •  remove\_event \([DialogEventResource](class_dialog-event-resource/) event\)

Remove an event from `events`

## Usage Example

{% tabs %}
{% tab title="GDScript" %}
```cpp
# Creates the timeline
var timeline := DialogTimelineResource.new()

# Create some events to add in the timeline
var event_1 := DialogTextEvent.new()
var event_2 := DialogTextEvent.new()

# Modify event properties
event_1.text = "Hello, this is the first event"
event_2.text = "And this is the second one!"

# Add the events in the timeline
timeline.add_event(event_1)
timeline.add_event(event_2)

# Optional:
# Use the timeline in your DialogNode
<DialogBaseNode>.timeline = timeline
<DialogBaseNode>.start_timeline()

```
{% endtab %}
{% endtabs %}

