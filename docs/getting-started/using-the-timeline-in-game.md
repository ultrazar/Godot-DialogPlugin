---
description: You need to create a new Dialog node to use your timelines in game.
---

# Using the Timeline in Game

## 🔵 Create it from code:

```swift
# ...
# inside any node in the scene
# ...

# Create the node first and start it with your timeline
var dialog_node = Dialog.start(<your_timeline>)

# Add that node to the scene
add_child(dialog_node)
```

`<your_timeline>` can be:

* The name of your timeline \(the name that you used when you created it\), 
* The absolute path \(something like `res://dialog_files/timelines/<your_timeline>.tres`\) to that timeline,
* A `DialogTimelineResource`.

## 🔵 Instantiate it in the scene through the editor:

![Instance the ingame dialogue node](../.gitbook/assets/godot_instance_dialog_node.png)

Then, select the node:

![Node in Scene Tree](../.gitbook/assets/godot_scene_tree.png)

And, inside the Inspector tab, select the timeline:

![Timeline selection in editor](../.gitbook/assets/godot_inspector_tab.png)

That's it, it's fair simple.



> For now, there's only 3 events. They'll be more, and you can create your custom events if you want.

