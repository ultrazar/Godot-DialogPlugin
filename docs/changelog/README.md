---
description: All notable changes to this project will be documented in this file.
---

# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## \[UNRELEASED\]

Unreleased version. This is what is going to be in the next version \[1.0 maybe?\].

## Added

* **Background loading for timelines.** Say goodbye to long waiting times when opening a timeline.
* **Edit timelines that are sub-resources.** Who says you are obliged to follow the standard?

## Changed

* **`DialogUtil.Logger` class updated**. Now with a better logger suit to show better information about what's happening in the background.
* **EventDisplayer now load nodes once.** Less waiting time means more development time.

## Deprecated

* **`EditorEventNode._save_resource()`**. Use `EditorEventNode.resource_value_modified()` instead.

## Fixed

* **TextEventNode**. Weird issues about character selection.
* **TextWithAudioEventNode**. The event node was uncompleted.

