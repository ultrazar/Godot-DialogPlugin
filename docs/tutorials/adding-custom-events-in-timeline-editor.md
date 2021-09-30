---
description: Register your script in the corresponding category
---

# Adding Custom Events in Timeline Editor

This step is optional when you create custom events, but is required if you want to add a button that generates your event in the sequence editor:

![Default Timeline Event Toolbar](../.gitbook/assets/image%20%283%29.png)

Extend `DialogMiscelaneousEvent`, `DialogCharacterEvent`, `DialogTextEvent` or `DialogLogicEvent` and assign it a unique `class_name`. Then restart the plugin so that your event appears in the event bar.

Each class represents the category that the event will be added, and will inherith any special method/property that the parent class has.

## Example

Let's use the same script that were used in ["Creating a Custom Event"](creating-a-custom-event.md)

{% tabs %}
{% tab title="GDScript" %}
{% code title="res://example\_event.gd" %}
```coffeescript
# The script must extend DialogEventResource or any sub-class
#extends DialogEventResource
# Replace DialogEventResource with event category
extends DialogMiscelaneousEvent

# You need to give it a class_name
class_name TestEvent

# Override _init method to modify default values of the event
func _init():
    # event_name corresponds the name of this event
    event_name = "Test Event"
    # event_hint corresponds the description used for this event
    event_hint = "Event created with debug purposes"

# Override the execute method.
# It'll be called when the timeline reach this event
func execute(caller:DialogBaseNode) -> void:
    print("Hello everybody")
    
    # Notify that your event is done and can continue to
    # the next event.
    # argument "true" is passed to continue inmediatly to
    # next event.
    # If no argument is passed, "skip" property will
    # be used instead. (false by default)
    finish(true)

```
{% endcode %}
{% endtab %}
{% endtabs %}

After restarting the plugin, the Timeline Event Toolbar will show your custom event:

![Modified Timeline Event Toolbar](../.gitbook/assets/image%20%285%29.png)

You can even start using it without problems:

![Custom Event created by clicking the event button](../.gitbook/assets/image%20%284%29.png)

