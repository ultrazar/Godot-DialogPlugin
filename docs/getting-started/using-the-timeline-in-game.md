---
description: >-
  DialogNodes uses timelines to do their work. Here's the step by step to create
  and use them.
---

# Creating Dialog Nodes and Using Timelines

In order to use your timelines, you'll need a DialogNode \(DialogBaseNode instance to be clear\) that will interpret the timeline's content.

You had two options to create an instance of DialogBaseNode, [through the editor](using-the-timeline-in-game.md#instantiate-it-in-the-scene-through-the-editor) or [by code](creating-a-timeline.md#creating-a-timeline-through-code).

  
Instancing it through editor let you manage visually the properties of the node, and it'll be saved in your scene.

Instancing it by code let you create them everytime you need it, or by response to some method/signal call.  


## 🔵 Instantiate it in the scene through the editor:

![Instance the ingame dialogue node](../.gitbook/assets/godot_instance_dialog_node.png)

Then, select the node:

![Node in Scene Tree](../.gitbook/assets/godot_scene_tree.png)

And, inside the Inspector tab, select the timeline:

![](../.gitbook/assets/select_timeline.png)

That's it, it's fair simple.

## 🔵 Create it from code:

```swift
# ...
# inside any node in the scene
# ...

# Create the node first and start it with your timeline
var dialog_node = Dialog.get_new_dialog_node([your_timeline])

# Add that node to the scene
add_child(dialog_node)

# Start the timeline
dialog_node.start_timeline()
```

`[your_timeline]` can be: 

* The absolute path \(something like `"res://<your_timeline>.tres"`\) to that timeline,
* A `DialogTimelineResource`.

Or you can set the timeline resource directly

```swift
<DialogBaseNode>.timeline = <Your_Timeline_Resource>
<DialogBaseNode>.start_timeline()
```

