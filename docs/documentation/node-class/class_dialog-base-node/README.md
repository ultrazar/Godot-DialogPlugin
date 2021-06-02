---
description: Base class of any Dialog node.
---

# DialogBaseNode

**Inherits:** [CanvasItem](https://docs.godotengine.org/en/stable/classes/class_canvasitem.html)

## Description

`Dialog` nodes inheriths this class.   
This class works as a "Dialog Manager". You should not instance this class manually, you should `extends` its functionality.

{% tabs %}
{% tab title="Properties" %}
| Type | Name | Default |
| :--- | :--- | :--- |
| String | [timeline\_name]() |  |
| NodePath | [DialogNode\_path]() |  |
| NodePath | [PortraitsNode\_path]() |  |
| DialogTimelineResource | [timeline]() |  |
| float | [text\_speed]() |  |
| bool | [event\_finished]() |  |
| String | [next\_input]() |  |
| DialogDialogueNode | [DialogNode]() |  |
| DialogPortraitManager | [PortraitManager]() |  |
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

**Method Descriptions**

**◽ void start\_timeline \( \)**

**◽ DialogTimelineResource load\_timeline \( \)**

