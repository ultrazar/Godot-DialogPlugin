# DialogPortraitManager

#### **Inherits:** \[Control\]\[class\_control\]

Base class for any `DialogPortraitManager` node.

## Description

Takes care of the displayed portrait of any character, saving their reference.

## Properties

| Type | Name |
| :--- | :--- |
| NodePath | LeftNode\_path |
| NodePath | CenterLeftNode\_path |
| NodePath | CenterNode\_path |
| NodePath | CenterRightNode\_path |
| NodePath | RightNode\_path |
| NodePath | portraits |

## Methods

| Type | Name |
| :--- | :--- |
| void | add\_portrait \( DialogCharacterResource character\_resource, DialogPortraitResource portrait, Position position=Position.CENTER, PAnimation animation=PAnimation.NO\_ANIMATION, bool get\_focus=true \) |
| void | remove\_portrait \( Node portrait\_node \) |
| void | grab\_portrait\_focus \( TextureRect char\_portrait\_node, PAnimation animation\) |

## Signals

* **portrait\_added\(** character **\)**

  Emmited when a `character`\(`DialogCharacterResource`\) portrait was added.

## Enumerations

* **PAnimation**
  * NO\_ANIMATION
  * FADE\_IN
  * APPEAR
  * DISAPPEAR 
  * FADE\_OUT
* **Position**
  * CENTER
  * CENTER\_LEFT
  * CENTER\_RIGHT
  * LEFT
  * RIGHT

## Constants

## Property Descriptions

### ◽ Dictionary portraits

{CharacterResource: PortraitNode-&gt;TextureRect}

## Method Descriptions

### ◽

\[class\_control\]:\#

