# A responsive website built on Flutter web

This project is a starting point for a Flutter application for me. I am learning Flutter layout concepts while building this.


## Project structure

The screens are all clubbed together under `\pages` and this makes finding different sections easier. Each page right now has a screen layout which defines the different screen sizes.

`main.dart` creates a theme for the app and loads the home page from `home_page.dart`. The home page loads the `responsive_widget.dart` widget. This widget uses the `LayoutBuilder` widget to create breakpoints and return the appropriate screen layout. Any component, using the responsive widget, can use it to define how it renders itself on different screen layouts. A component is a widget, which in my terminology, is a higher level widget using bloc providers and services

As you can see that the changes would flow through the structure of this decision, we could use an `InheritedWidget`, but since we aren't looking at change management and building a fairly straight forward website, I have used a `Scaffold` widget.

This `Scaffold` widget creates stacks using `Stack` widgets or just plain scrolling views using `SingleChildScrollView` widget and builds the home page structure for different screen sizes on it.

This is the structure of the current app :

```

    |
    |--pages
    |  |--home_page.dart
    |
    |--screens
    |   |--home_screens.dart
    |
    |--components
    |  |--header.dart
    |  |--hero.dart
    |
    |--themes  
    |  |--primary.dart
    |  |--dark.dart
    |
    |--bloc
    |  |--
    |
    |--bloc_providers
    |  |--
    |
    |--models
    |  |--
    |
    |--services
    |  |--
    |
    |--main.dart
```


## Resources I referred to while building this

* This section of flutter documentation really explains in detail how a Non-material layout could be constructed from scratch - [Flutter Layout Basics](https://flutter.dev/docs/codelabs/layout-basics)
- [Bulding layouts in Flutter](https://flutter.dev/docs/development/ui/layout)
- [Building Layouts tutorial](https://flutter.dev/docs/development/ui/layout/tutorial)

* For LayoutBuilder and responsive apps
- [Creating responsive apps](https://flutter.dev/docs/development/ui/layout/responsive)
- [Layout Builder Class](https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html)
- [Flutter LaoutBuilder Widget blog post](https://medium.com/@KarthikPonnam/flutter-layoutbuilder-widget-1-b09fd1e6907f)
- [This guys website that demo's responsive web design on flutter web](https://github.com/iampawan/MyPortfolio)

* Navigation basics
- [Flutter Cookbook for Navigation](https://flutter.dev/docs/cookbook/navigation)

Apart from these, these links that come as part of the standard new app are also useful -

* [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
* [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
