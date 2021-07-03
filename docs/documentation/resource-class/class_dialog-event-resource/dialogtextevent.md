---
description: Base Event Class for every event related to displaying text in screen.
---

# DialogTextEvent

**Inherits:** [DialogEventResource](./)



{% tabs %}
{% tab title="Properties" %}
| Type | Name |
| :--- | :--- |
| String | text |
| Float | text\_speed |
| bool | continue\_previous\_text |
| String | translation\_key |
| Font | font\_normal |
| Font | font\_bold |
| Font | font\_italics |
| Font | font\_bold\_italics |
| DialogDialogueManager | \_DialogNode |
{% endtab %}

{% tab title="Methods" %}
| Type | Name |
| :--- | :--- |
| void | prepare\_text |
| void | configure\_text\_node\_fonts |
| void | prepare\_character\_name |
{% endtab %}
{% endtabs %}



