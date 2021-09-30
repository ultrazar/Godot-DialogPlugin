---
description: Base class for any DialogPortraitManager node.
---

# DialogPortraitManager

**Inherits:** [Control](https://docs.godotengine.org/es/stable/classes/class_control.html)

## Description

Takes care of the displayed portrait of any character, saving their reference.



{% tabs %}
{% tab title="Properties" %}
| Type | Name | Default |
| :--- | :--- | :--- |
| NodePath | ReferenceSize | `""` |
| ReferenceRect | size\_reference\_node | `null` |
| Dictionary | portraits | `{ }` |
{% endtab %}

{% tab title="Methods" %}
<table>
  <thead>
    <tr>
      <th style="text-align:left">Type</th>
      <th style="text-align:left">Name</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">void</td>
      <td style="text-align:left">
        <p><b>add_portrait </b>( <a href="../resource-class/class_dialog-character-resource.md">DialogCharacterResource </a>character,</p>
        <p><a href="../resource-class/class_dialog-portrait-resource.md">DialogPortraitResource </a>portrait,</p>
        <p>Vector2 relative_position = Vector2(0.414, 0.275)</p>
        <p>float rotation = 0.0</p>
        <p>bool flip_h = false</p>
        <p>bool flip_v = false )</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">void</td>
      <td style="text-align:left"><b>remove_portrait </b>( <a href="../resource-class/class_dialog-character-resource.md">DialogCharacterResource </a>character
        )</td>
    </tr>
    <tr>
      <td style="text-align:left">void</td>
      <td style="text-align:left"><b>remove_all_portraits </b>( )</td>
    </tr>
    <tr>
      <td style="text-align:left">void</td>
      <td style="text-align:left">
        <p><b>change_portrait </b>( <a href="../resource-class/class_dialog-character-resource.md">DialogCharacterResource </a>character,</p>
        <p><a href="../resource-class/class_dialog-portrait-resource.md">DialogPortraitResource </a>portrait
          )</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">void</td>
      <td style="text-align:left"><b>grab_portrait_focus </b>( TextureRect character_portrait_node)</td>
    </tr>
  </tbody>
</table>
{% endtab %}

{% tab title="Signals" %}
### portrait\_added\(character, new\_portrait\)

{% hint style="info" %}
The signal is emmited if `add_portrait()` was called without `character` or `portrait` argument.
{% endhint %}

Emmited when a `character`\(`DialogCharacterResource`\) portrait was added.

### portrait\_changed\(character, new\_portrait\)

{% hint style="info" %}
The signal is emmited if `change_portrait()` was called without `character` or `portrait` argument.
{% endhint %}

Emmited when a portrait was changed with a new one.

#### portrait\_removed\(character\)

Emmited when a character portrait was removed from scene.
{% endtab %}
{% endtabs %}

## Method Descriptions

