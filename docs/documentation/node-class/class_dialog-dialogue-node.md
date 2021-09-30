---
description: Base class for all dialogue nodes.
---

# DialogDialogueManager

**Inherits:** [Control](https://docs.godotengine.org/es/stable/classes/class_control.html)

## Description

This node takes cares about displaying text and showing an indicator.

Used by [DialogTextEvent](../resource-class/class_dialog-event-resource/dialogtextevent.md).

{% tabs %}
{% tab title="Properties" %}
| Type | Name |
| :--- | :--- |
| NodePath | TextNode\_path |
| NodePath | NameNode\_path |
| NodePath | NextIndicator\_path |
| float | text\_speed |
| bool | event\_finished |
| RichTextLabel | TextNode |
| Label | NameNode |
| Control | NextIndicatorNode |
| float | text\_speed |
| String | next\_action |
{% endtab %}

{% tab title="Methods" %}
| Type | Name |
| :--- | :--- |
| void | display\_all\_text \( \) |
| void | display\_text \( \) |
| void | set\_text \( String text \) |
| void | add\_text \( String text \) |
{% endtab %}

{% tab title="Signals" %}
### • text\_displayed \( value \)

### • character\_displayed \( value \)
{% endtab %}
{% endtabs %}

