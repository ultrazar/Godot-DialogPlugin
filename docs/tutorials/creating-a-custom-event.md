---
description: Custom events for custom functions in your game
---

# Creating a Custom Event

Custom events are useful when you want to extend the functionality of the plugin, either because you want a new event or to integrate a whole new system. First you must understand how an event works: 

![Timeline behaviour](../.gitbook/assets/image%20%282%29.png)

1. The sequence is started. 
2. The sequence executes the event. 
3. The event emits the `event_started` signal. 
4. The event calls its `execute()` function. 
5. The sequence waits for the `event_finished` signal to know that it must continue to the next event. 

The process repeats until there are no more events in the sequence.

## Make an script

The script will be the heart of your event. What you put in it will be exactly what will be executed in the game. 

The script must extend [`DialogEventResource`](../documentation/resource-class/class_dialog-event-resource/) and override the [`execute()`](../documentation/resource-class/class_dialog-event-resource/#void-execute-dialogbasenode-caller) method. 

The plugin comes with a template for creating the event, its use is recommended.

Let's create an event that prints `Hello everybody` in the console.

{% tabs %}
{% tab title="GDScript" %}
{% code title="res://example\_event.gd" %}
```coffeescript
# The script must extend DialogEventResource or any sub-class
extends DialogEventResource
# you can give it a class_name if you want

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

To use you freshly new created event \(in code\) you just had to do:

{% tabs %}
{% tab title="GDScript" %}
```coffeescript
# Create a new timeline
var timeline := DialogTimelineResource.new()
# or use an already created timeline
timeline = load("res://path/to/timeline.tres") as DialogTimelineResource

# Load your event script
var event_script := load("res://example_event.gd") as GDScript

# And create a new instance of that event
var event := event_script.new() as DialogEventResource

# Then add the event to the timeline
timeline.add_event(event)

# Finally, set the dialog timeline this timeline
# Assuming that "dialog_node" is a DialogBaseNode in scene
dialog_node.timeline = timeline
dialog_node.start_timeline()
```
{% endtab %}
{% endtabs %}

{% hint style="info" %}
If you want to see your event inside the timeline editor toolbar take a look at the section [register your script in the corresponding category](adding-custom-events-in-timeline-editor.md).
{% endhint %}

