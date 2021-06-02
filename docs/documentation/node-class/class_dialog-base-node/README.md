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

#### [NodePath](https://docs.godotengine.org/es/stable/classes/class_nodepath.html) DialogNode\_path

[NodePath](https://docs.godotengine.org/es/stable/classes/class_nodepath.html) PortraitsNode\_path

#### DialogTimelineResource timeline

#### float text\_speed

#### bool event\_finished

#### String next\_input

#### DialogDialogueNode DialogNode

#### DialogPortraitManager PortraitManager
{% endtab %}

{% tab title="Methods" %}
| Type | Name |
| :--- | :--- |
| void | [start\_timeline]() \( \) |
| DialogTimelineResource | [load\_timeline]() \( \) |
{% endtab %}
{% endtabs %}



**Property Descriptions**

**◽ String timeline\_name**

**◽ DialogTimelineResource timeline**

**◽ NodePath DialogNode\_path**

**◽ NodePath PortraitsNode\_path**

**◽ float text\_speed**

**◽ bool event\_finished**

**◽ String next\_input**

**◽ DialogDialogueNode DialogNode**

**◽ DialogPortraitManager PortraitManager**

## **Method Descriptions**

**◽ void start\_timeline \( \)**

**◽ DialogTimelineResource load\_timeline \( \)**

