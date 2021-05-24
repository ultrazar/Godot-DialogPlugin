---
description: >-
  All notable changes to this project will be documented in this file.The format
  is based on Keep a Changelog, and this project adheres to Semantic Versioning.
---

# Changelog

## \[UNRELEASED\]

### Added

* **Event container in timeline editor**
* **Property `event_editor_scene_path`in EventResource.** Now is more easy to create custom events and point to its editor.
* **Character Leave event.** to make your characters out the conversation, know as `DialogCharacterLeaveEvent`
* **Character Change Expression event.** Know as `DialogCharacterChangeExpressionEvent`
* **Play Audio event.**
* **Stop Audio event.**
* **Jump to event.** Know as `DialogJumpToEvent`
* **Jump to timeline.** Know as `DialogChangeTimelineEvent`
* **Custom event.** Know as `DialogCustomEvent`
* **New property for every EventResource:** `skip`. Now you can decide if the event will continue inmediatly to next event or will wait until the user press a key.
* **OptionButtonGenerator class added.** Is like an OptionButton but with suggar. \[Needs documentation and is not avaliable in the global scope\]
* **New signal to DialogEditorEventNode.** `timeline_requested`
* **Variables.**
  * Custom editor for variables \(you can still using Godot editor if you want\)
  * Sintax highlighting for variables in the editor.
* **Toolbar editor on resource selection**.
* **Variables editor on `Tools` menu.**

  **Changed**

* **Clip content outside the timeline preview.**
* **Event buttons background**
* **Portraits are now treated as expressions in editor.**
* **Portrait ReferenceRect are now useful.** They represent how the portrait may be in game, including position and size.
* **Script templates.** Now with more comments
* **DialogEvent in button events nodes.**Now is more easy to display custom resources. Errors may appear in console due a godot related bug.

  **Deprecated**

* **Expand and contract animation in event buttons.** The information about the event now had to be a text hint tooltip.

  **Removed**

* **Floating event container in timeline editor**
* **Override `get_event_editor_node` from EventResource.** Now is more easy to create custom events
* **Dialog editor**. Now every dialog resource can be edited on selection.

  **Fixed**

* **Character, animation and portrait list giving weird errors on new projects.**
* **Sometimes the editor closes itself with no reason**
* **Character join event doesn't show the last saved portrait position.**

