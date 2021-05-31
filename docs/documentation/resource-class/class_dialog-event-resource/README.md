# DialogEventResource

#### **Inherits:** [Resource]()

#### **Inherited by:** [DialogTextEvent](), [DialogCharacterJoinEvent](), [DialogCharacterLeaveEvent](), [DialogWaitTimeEvent]()

Base class for all dialog `event`s.

## Description

Every dialog event relies on this class. If you want to do your own event, you should `extend` this class.

## Properties

| Type | Name |
| :--- | :--- |
| DialogBaseNode | \_caller |

## Methods

| Type | Name |
| :--- | :--- |
| void | excecute \( DialogBaseNode caller \) |
| void | finish \( bool skip=false \) |
| DialogEditorEventNode | get\_editor\_node \( \) |

## Signals

* event\_started\(event\_resource\)
* event\_finished\(event\_resource\)

  **Enumerations**

  **Constants**

  **Property Descriptions**

  **◽**

  **Method Descriptions**

  **◽**

