# flutter_avatar

Various ready to use Avatars in your Flutter apps

<p align="center">
<img src="https://raw.githubusercontent.com/timilehinjegede/flutter-avatar/master/screenshots/fa_1.png" alt="Showcase 1" width="230px" hspace="30"/>  <img src="https://raw.githubusercontent.com/timilehinjegede/flutter-avatar/master/screenshots/fa_2.png" alt="Showcase 2" width="230px"/> 
</p>

## Installing

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  flutter_avatar: ^0.1.0
```

## How To Use

In your file add the following import:

```dart
import 'package:flutter_avatar/flutter_avatar.dart';
```

Create a `FlutterAvatar` widget:

```dart
  FlutterAvatar(
      backgroundColor: Colors.blue,
      radius: 50,
      shape: BoxShape.circle,
      avatarShadow: BoxShadow(
        color: Colors.blue.withOpacity(0.6),
        blurRadius: 15,
        spreadRadius: 5,
        offset: Offset(0, -1),
      ),
      child: Text(
        'TJ',
        style: TextStyle(
          fontSize: 35,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
```

## Customizations 

Property | Description
-------- | ---------------
radius    | The size of the [FlutterAvatar], which is half of the Diameter. Defaults to 20.
child    | The widget below this widget [FlutterAvatar] in the widget tree
borderRadius    | The corners of the [FlutterAvatar] are rounded by the value of the [borderRadius].
shape    | The shape to be used for the [FlutterAvatar], can be [BoxShape.circle] or [BoxShape.rectangle].
badge    | The title displayed to the user
badgePosition    | The title displayed to the user
avatarShadow    | The [avatarShadow] is cast behind the [FlutterAvatar] widget
backgroundColor    | The color used to fill the [FlutterAvatar]
elevation    | The elevation of the [FlutterAvatar] widget. Defaults to 5.0 if no value is given.
elevationColor    | The color of the [elevation]


## Contributions 

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/timilehinjegede/flutter-avatar/issues).  
If you fixed a bug or implemented a feature, please send a [pull request](https://github.com/timilehinjegede/flutter-avatar/pulls).