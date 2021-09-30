---
description: Static class to deal with Dialog plugin.
---

# Dialog

## Description

Dialog is the core class of the plugin. You can call any of its methods in any script.   
  
This class exposes methods to create new [`Dialog`](class_dialog-base-node.md) nodes or modify the plugin saved variables.

{% tabs %}
{% tab title="Methods" %}
| Type | Name |
| :--- | :--- |
| [DialogBaseNode](class_dialog-base-node.md) | [get\_new\_dialog\_node ](class_dialog.md#get_new_dialog_node) \(timeline, String dialog\_scene\_path="", bool use\_bubble=false\) |
| [DialogBaseNode](class_dialog-base-node.md) | [get\_default\_dialog\_textbox ](class_dialog.md#dialogbasenode-get_default_dialog_textbox)\( \) |
| [DialogBaseNode](class_dialog-base-node.md) | [get\_default\_dialog\_bubble ](class_dialog.md#dialogbasenode-get_default_dialog_bubble)\( \) |
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

### •  [DialogBaseNode](class_dialog-base-node.md) get\_new\_dialog\_node \( timeline, String dialog\_scene\_path="", bool use\_bubble=false\)  <a id="get_new_dialog_node"></a>

Returns a DialogBaseNode instance.

`timeline` can be:

* The absolute path \(something like `res://path/to/<your_timeline>.tres`\) to that timeline,
* A [`DialogTimelineResource`](../resource-class/class_dialog-timeline-resource.md).

**`dialog_scene_path`** is the path of an scene wich returns a [`DialogBaseNode`](class_dialog-base-node.md) when is instanced. If none is passed or is an invalid path, the default one is used.

**`use_bubble`** determines if the returned node is a speech bubble or a text box. This property is ignored if **`dialog_scene_path`** is a valid path.



### •  [DialogBaseNode ](class_dialog-base-node.md)**get\_default\_dialog\_textbox \( \)**

Returns a [DialogBaseNode ](class_dialog-base-node.md)instance of the default textbox.



### •  [DialogBaseNode ](class_dialog-base-node.md)**get\_default\_dialog\_bubble \( \)**

Returns a [DialogBaseNode](class_dialog-base-node.md) instance of the default dialog bubble.



### •  [Dictionary ](https://docs.godotengine.org/es/stable/classes/class_dictionary.html)get\_variables \( \)

Returns a copy of the saved plugin variables.



### •  [Variant ](https://docs.godotengine.org/es/stable/classes/class_variant.html)get\_variable \( [String ](https://docs.godotengine.org/es/stable/classes/class_string.html)key \)

Returns the variable value of the given `key`. If the variable doesn't exist, returns `null` and a warning is printed in the console.

### •  void set\_variable \( [String ](https://docs.godotengine.org/es/stable/classes/class_string.html)key, value\)

Sets the value in the given key. If they key doesn't exist, a new one is created.

