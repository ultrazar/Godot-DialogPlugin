---
description: Base class of any Dialog node.
---

# DialogBaseNode

**Inherits:** [CanvasItem](https://docs.godotengine.org/en/stable/classes/class_canvasitem.html)

{% hint style="info" %}
This class works as a "Dialog Manager". You should not instance this class manually, you should `extends` its functionality.
{% endhint %}

## Description

`Dialog` nodes inheriths this class. `Dialog` nodes are not the same as [Dialog class](../class_dialog.md), is just a name that is used as a shorthand of `DialogBaseNode` node.

{% tabs %}
{% tab title="Properties" %}
| Type | Name | Default |
| :--- | :--- | :--- |
| [String](https://docs.godotengine.org/es/stable/classes/class_string.html) | timeline\_name | `""` |
| [NodePath](https://docs.godotengine.org/es/stable/classes/class_nodepath.html) | DialogNode\_path | `""` |
| [NodePath](https://docs.godotengine.org/es/stable/classes/class_nodepath.html) | PortraitsNode\_path | `""` |
| [DialogTimelineResource](../../resource-class/class_dialog-timeline-resource.md) | timeline | `null` |
| [float](https://docs.godotengine.org/es/stable/classes/class_float.html) | text\_speed | `0.02` |
| [bool](https://docs.godotengine.org/es/stable/classes/class_bool.html) | event\_finished | `false` |
| [String](https://docs.godotengine.org/es/stable/classes/class_string.html) | next\_input | `ui_accept` |
| [DialogDialogueNode](class_dialog-dialogue-node.md) | DialogNode | `null` |
| [DialogPortraitManager](class_dialog-portrait-manager.md) | PortraitManager | `null` |

### Property Descriptions

#### [String](https://docs.godotengine.org/es/stable/classes/class_string.html) timeline\_name

The file path of the timeline.

#### [NodePath](https://docs.godotengine.org/es/stable/classes/class_nodepath.html) DialogNode\_path

NodePath that refers to the DialogNode

#### [NodePath](https://docs.godotengine.org/es/stable/classes/class_nodepath.html) PortraitsNode\_path

NodePath that referes to the PortraitManager node

#### [DialogTimelineResource ](../../resource-class/class_dialog-timeline-resource.md)timeline

Timeline resource used by this node. If is `null`, `timeline_name`is loaded.

#### [float ](https://docs.godotengine.org/es/stable/classes/class_float.html)text\_speed

{% hint style="warning" %}
This property will probably be removed and set to  [`DialogDialogueNode`](class_dialog-dialogue-node.md) instead.
{% endhint %}

The speed of the text.

#### [bool ](https://docs.godotengine.org/es/stable/classes/class_bool.html)event\_finished

If `true` the event have just finished.

#### [String ](https://docs.godotengine.org/es/stable/classes/class_string.html)next\_input

The `Input` event that will trigger the `skip` action of the event on finish.

#### [DialogDialogueNode ](class_dialog-dialogue-node.md)DialogNode

Dialogue Node.

#### [DialogPortraitManager ](class_dialog-portrait-manager.md)PortraitManager

Portrait Container Node.
{% endtab %}

{% tab title="Methods" %}
| Type | Name |
| :--- | :--- |
| void | [start\_timeline ](./#void-start_timeline)\( \) |
| [DialogTimelineResource](../../resource-class/class_dialog-timeline-resource.md) | [load\_timeline ](./#dialogtimelineresource-load_timeline)\( \) |
{% endtab %}

{% tab title="Constants" %}
### TranslationService

### DialogUtil
{% endtab %}
{% endtabs %}

## **Method Descriptions**

### •  **void start\_timeline \( \)**

Starts the timeline.

### •  ****[**DialogTimelineResource** ](../../resource-class/class_dialog-timeline-resource.md)**load\_timeline \( \)**

Loads the timeline defined in `timeline_name`.

