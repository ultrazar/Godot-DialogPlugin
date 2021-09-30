---
description: Base Event Class for every event related to a character
---

# DialogCharacterEvent

**Inherits:** [DialogEventResource](./)

{% tabs %}
{% tab title="Properties" %}
| Type | Name | Description |
| :--- | :--- | :--- |
| [DialogCharacterResource](https://docs.godotengine.org/es/stable/classes/class_int.html) | character | `null` |
| [int](https://docs.godotengine.org/es/stable/classes/class_int.html) | selected\_portrait | `0` |

### Property Descriptions

#### [DialogCharacterResource ](../class_dialog-character-resource.md)character

The character used for this event.



#### [int ](https://docs.godotengine.org/es/stable/classes/class_int.html)selected\_portrait

The portrait index selected for this event.
{% endtab %}

{% tab title="Methods" %}
| Type | Name |
| :--- | :--- |
| [DialogPortraitResource](../class_dialog-portrait-resource.md) | get\_selected\_portrait \( \) |
{% endtab %}
{% endtabs %}

## Method Descriptions

### •  [DialogPortraitResource](../class_dialog-portrait-resource.md) get\_selected\_portrait \( [DialogBaseNode ](../../node-class/class_dialog-base-node/)caller \)

Returns the portrait selected according to `selected_portrait` or `null` if none is selected.



