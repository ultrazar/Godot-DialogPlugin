---
description: Base class for all dialogue nodes.
---

# DialogDialogueNode

**Inherits:** [Control](https://docs.godotengine.org/es/stable/classes/class_control.html)

## Description

This is not the same as [DialogBaseNode](class_dialog_base_node.md), this node just takes cares about displaying text and showing an indicator.

Used by DialogTextEvent.

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
{% endtab %}
{% endtabs %}

