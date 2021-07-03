# Creating a Timeline

{% hint style="info" %}
The plugin must be activated.
{% endhint %}

## Creating a timeline through the editor

* Go to FileSystem tab.

![FileSystem tab](../.gitbook/assets/image.png)

* Right click and click on `New Resource`.

![](../.gitbook/assets/file_system_en_example.gif)

* Select `DialogTimelineResource` and save it whetever you want.

![](../.gitbook/assets/new_resource_en_example.gif)

## Creating a timeline through code

Create a `DialogTimelineResource` resource and assign it to a variable to use it.

```swift
var timeline = DialogTimelineResource.new()
```

![](../.gitbook/assets/new_code_en_example.gif)

