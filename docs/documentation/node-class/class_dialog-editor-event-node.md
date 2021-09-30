---
description: Base class for all event editor nodes.
---

# DialogEditorEventNode

**Inherits:** Control

### Related Tutorials

{% page-ref page="../../tutorials/creating-a-custom-event.md" %}

{% page-ref page="../../tutorials/event-custom-properties.md" %}

## Description

This is the generic node that is displayed inside the timeline editor. You can extend this class on any Control Node to make your own custom event editor node for your custom events.

{% tabs %}
{% tab title="Properties" %}
| Type | Name | Default |
| :--- | :--- | :--- |
| DialogEventResource | base\_resource | `null` |
| int | idx | `0` |
| Color | event\_color | `Color("3c3d5e")` |
| NodePath | IconNode\_path | `""` |
| NodePath | TopContent\_path | `""` |
| NodePath | PropertiesContainer | `""` |
| NodePath | IndexLbl\_path | `""` |
| NodePath | SkipBtn\_path | `""` |
| PanelContainer | top\_content\_node | `null` |
| PanelContainer | properties\_content\_node | `null` |
| Container | event\_name\_container | `null` |
| TextureRect | icon\_node | `null` |
| Label | index\_label\_node | `null` |
| CheckBox | skip\_button\_node | `null` |
{% endtab %}

{% tab title="Methods" %}
| Type | Name |
| :--- | :--- |
| void | \_update\_node\_values \( \) |
| void | expand\_properties \( \) |
| void | collapse\_properties \( \) |
| void | after\_expand\_properties \( \) |
| void | after\_collapse\_properties \( \) |
{% endtab %}

{% tab title="Signals" %}
### deletion\_requested\(item\)

### save\_item\_requested\(item\)

### event\_being\_dragged\(\)

### timeline\_requested\(emitter\_node\)
{% endtab %}

{% tab title="Constants" %}
### DEFAULT\_COLOR

```swift
Color("#999999")
```

### TranslationService

### DialogUtil
{% endtab %}
{% endtabs %}

