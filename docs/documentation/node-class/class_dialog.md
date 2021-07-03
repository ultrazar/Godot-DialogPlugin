---
description: Static class to deal with Dialog plugin.
---

# Dialog

## Description

Dialog is the core class of the plugin. You can call any of its methods in any script.   
  
This class exposes methods to create new [`Dialog`](class_dialog-base-node/) nodes or modify the plugin saved variables.

{% tabs %}
{% tab title="Methods" %}
| Type | Name |
| :--- | :--- |
| [DialogBaseNode](class_dialog-base-node/) | [start ](class_dialog.md#dialogbasenode-start-timeline-string-dialog_scene_path-bool-use_bubble-false)\(timeline, String dialog\_scene\_path="", bool use\_bubble=false\) |
| [DialogBaseNode](class_dialog-base-node/) | [get\_default\_dialog\_textbox ](class_dialog.md#dialogbasenode-get_default_dialog_textbox)\( \) |
| [DialogBaseNode](class_dialog-base-node/) | [get\_default\_dialog\_bubble ](class_dialog.md#dialogbasenode-get_default_dialog_bubble)\( \) |
| [Dictionary](https://docs.godotengine.org/es/stable/classes/class_dictionary.html) | get\_variables \( \) |
| [Variant](https://docs.godotengine.org/es/stable/classes/class_variant.html) | get\_variable \( [String ](https://docs.godotengine.org/es/stable/classes/class_string.html)key \) |
| void | set\_variable \( [String ](https://docs.godotengine.org/es/stable/classes/class_string.html)key, value\) |
{% endtab %}

{% tab title="Constants" %}
### DefaultDialogTextBox:String

Default dialog text box scene path

### DefaultDialogBubble:String

Default dialog bubble scene path
{% endtab %}
{% endtabs %}

## Method Descriptions

### •  [DialogBaseNode](class_dialog-base-node/) start\(timeline, String dialog\_scene\_path="", bool use\_bubble=false\) 

Returns a DialogBaseNode instance.

`timeline` can be:

* The name of your timeline \(the name that you used when you created it\),
* The absolute path \(something like `res://dialog_files/timelines/<your_timeline>.tres`\) to that timeline,
* A `DialogTimelineResource`.

`dialog_scene_path` is the path of an scene wich returns a `DialogBaseNode` when is instanced. If none is passed, the default one is used.

`use_bubble`determines if the returned node is a speech bubble or a text box. This property is ignored if `dialog_scene_path` is a valid path.



### •  [DialogBaseNode ](class_dialog-base-node/)**get\_default\_dialog\_textbox \( \)**

Returns a [DialogBaseNode ](class_dialog-base-node/)instance of the default textbox.



### •  [DialogBaseNode ](class_dialog-base-node/)**get\_default\_dialog\_bubble \( \)**

Returns a [DialogBaseNode](class_dialog-base-node/) instance of the default dialog bubble.



### •  [Dictionary ](https://docs.godotengine.org/es/stable/classes/class_dictionary.html)get\_variables \( \)

Returns a copy of the saved plugin variables.



### •  [Variant ](https://docs.godotengine.org/es/stable/classes/class_variant.html)get\_variable \( [String ](https://docs.godotengine.org/es/stable/classes/class_string.html)key \)

Returns the variable value of the given `key`. If the variable doesn't exist, returns `null` and a warning is printed in the console.

### •  void set\_variable \( [String ](https://docs.godotengine.org/es/stable/classes/class_string.html)key, value\)

