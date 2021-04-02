# devtools_flutter

A project to demonstrate flutter devtools 

1. Layout Inspector
2. Performance of widget
3. CPU Performance
4. Memory usage
5. Network Inspector
6. Logging
7. App Size

## Layout Inspector
Inspect the UI layout and state of a Flutter app

The Flutter widget inspector is a powerful tool for visualizing and exploring Flutter widget trees.
Locate individual UI widgets with "Select Widget Mode"

- Flex layouts are used to change the layout and fix overflow issues. 
- Interactive Properties are used to change the main Axis and cross Axis alignment 

Eg: lib/presentation/screens/layout_screen.dart

## Performance of widget
Diagnose UI jank performance issues in a Flutter app

- Flutter frames chart used to view janks in single frames. If the frame takes more than ~16 ms.
- Timeline events chart used to build frames, draw scenes, and track other activity.
- Flame chart shows CPU samples as top-down stack trace for the recorded duration.

Eg: lib/presentation/screens/jank_screen.dart

## CPU Performance
CPU profiling for a Flutter or Dart app.

- Flame chart shows CPU samples as top-down stack trace for the recorded duration.

- Call tree view shows the method trace for the CPU profile
- Top-down representation of the profile, meaning that a method can be expanded to show its callees
- Bottom-up chart gives a list of function which takes the most time to execute.

Eg: lib/presentation/screens/jank_frame_screen.dart

## Memory usage
Memory page shows you how an isolate is using memory at a given moment.
A Snapshot is a complete view of all objects in the Dart memory heap.

- Memory anatomy used to visualize the state of the Flutter memory at successive intervals of time.
- Memory controls can be used to control how memory data is displayed.
- Memory overview chart to help visualize the state of the heap at various points in time.
- Snapshots shows the current state of the heap with regard to all active classes and their instances.
- Inspecting a class instance in a snapshot

Eg: lib/presentation/screens/jank_screen.dart

## Network Inspector
Network traffic should be recording by default when you open the Network page.

- We can inspect general and timing information about the request, as well as the content of response and request headers and bodies.
- Search and filtering

Eg: lib/presentation/screens/network_images.dart

## Logging
View general log and diagnostics information about a running Flutter or Dart command-line app

- Garbage collection events from the Dart
- Frame creation events
- stdout and stderr
- Custom logging form application

## App Size
Analyze code and app size.

Use the command to generate analysis file
`flutter build apk --analyze-size --target-platform=android-arm64`

- Analysis tab allows you to inspect a single snapshot of size information.
- Dominator tree and call graph can be used find an unexpected package included in your compiled app, you can use the dominator tree to trace the package to its root source.
- Diff tab can be used to analyze size of old and new files.
