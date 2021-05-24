# DialogBaseNode

#### **Inherits:** [CanvasItem](https://docs.godotengine.org/en/stable/classes/class_canvasitem.html)

Base class of any `Dialog` node.

## Description

`Dialog` nodes inheriths this class. This class works as a "Dialog Manager".

## Properties

| Type | Name |
| :--- | :--- |
| String | [timeline\_name]() |
| NodePath | [DialogNode\_path]() |
| NodePath | [PortraitsNode\_path]() |
| DialogTimelineResource | [timeline]() |
| float | [text\_speed]() |
| bool | [event\_finished]() |
| String | [next\_input]() |
| DialogDialogueNode | [DialogNode]() |
| DialogPortraitManager | [PortraitManager]() |

## Methods

| Type | Name |
| :--- | :--- |
| void | [start\_timeline]() \( \) |
| DialogTimelineResource | [load\_timeline]() \( \) |

## Signals

## Enumerations

## Constants

* DialogUtil

  **Property Descriptions**

  **◽ String timeline\_name**

  **◽ DialogTimelineResource timeline**

  **◽ NodePath DialogNode\_path**

  **◽ NodePath PortraitsNode\_path**

  **◽ float text\_speed**

  **◽ bool event\_finished**

  **◽ String next\_input**

  **◽ DialogDialogueNode DialogNode**

  **◽ DialogPortraitManager PortraitManager**

  **Method Descriptions**

  **◽ void start\_timeline \( \)**

  **◽ DialogTimelineResource load\_timeline \( \)**

