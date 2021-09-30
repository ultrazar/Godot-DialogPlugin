---
description: Base class for all characters resource.
---

# DialogCharacterResource

**Inherits:** [**Resource**](https://docs.godotengine.org/es/stable/classes/class_resource.html)\*\*\*\*

## Description

Character resource acts as a data container to all of your characters and related portraits to that character. 

To know more about portraits, see [DialogPortraitResource](class_dialog-portrait-resource.md) and [DialogPortraitManager](../node-class/class_dialog-base-node/class_dialog-portrait-manager.md). 

{% tabs %}
{% tab title="Properties" %}
| Type | Name | Description |
| :--- | :--- | :--- |
| [String](https://docs.godotengine.org/es/stable/classes/class_string.html#class-string) | name | Name of the character. By default, is the same as the `resource_name` |
| [String](https://docs.godotengine.org/es/stable/classes/class_string.html#class-string) | display\_name | Name of the character that'll be displayed in game. By default, is the same as `name` |
| [Color](https://docs.godotengine.org/es/stable/classes/class_color.html) | color | Color of the character name |
| Array | portraits | Collection of portraits that'll be displayed in game |
| [Texture](https://docs.godotengine.org/es/stable/classes/class_texture.html#class-texture) | icon | Character icon. Used by the editor. |
| Array | blip\_sound | Character sounds when talking. |
{% endtab %}

{% tab title="Methods" %}
| Type | Name |
| :--- | :--- |
| void | add\_portrait \( DialogPortraitResource portrait \) |
| void | add\_blip\_sound \( AudioStream blip\_sound \) |
| void | remove\_portrait \( DialogPortraitResource portrait \) |
| void | remove\_blip\_sound \( AudioStream blip\_sound \) |
{% endtab %}
{% endtabs %}

## Usage Example

{% tabs %}
{% tab title="GDScript" %}
```cpp
var new_character := DialogCharacterResource.new()
new_character.name = "Textalog"
new_character.name = "THE plugin"
```
{% endtab %}
{% endtabs %}

