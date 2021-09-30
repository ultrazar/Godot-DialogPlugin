---
description: Custom properties used in custom events
---

# Event Custom Properties

Custom properties are used in custom events `_get()` method to modify the editor node generation behaviour. They're not saved in the event resource and are only loaded in runtime.

Each property can be modified in the editor adding a return value inside `_get()` method of the event:

{% tabs %}
{% tab title="GDScript" %}
```swift
func _get(property: String):
    if property == "<property name>_<property modifier>":
        return <value>
        
```
{% endtab %}
{% endtabs %}

**`<property name>`** is the name of the property \(variable\) defined in the event class. It can be any property that can be used in the editor.

**`<property modifier>`** is the modifier that'll be applied to that property. Just a few modifiers can be used, and just certain types of modifiers will be applied to the type of the variable.

**`<value>`** is the corresponding value to that modifier.

{% tabs %}
{% tab title="GDScript" %}
```swift
# Example: Hiding "skip" property in the editor

func _get(property: String):
    # <property name> must be "skip"
    # <property modifier must be "ignore"
    # Separator "_" is mandatory
    
    if property == "skip_ignore":
    
        # "ignore" modifier expects a boolean value
        # so we must return true or false
        
        return true
```
{% endtab %}
{% endtabs %}

## Editor Event Modifiers

Here's a list of used modifiers.

* alternative\_name
* ignore
* use\_complex\_instead
* alternative\_node
* override\_position

