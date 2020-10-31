import 'package:flutter/material.dart';
import 'package:flutter_avatar/flutter_avatar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Avatar'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Example 1
                FAExampleOne(),

                const SizedBox(
                  height: 35,
                ),

                // Example 2
                FAExampleTwo(),

                const SizedBox(
                  height: 35,
                ),

                // Example 3
                FAExampleThree(),

                const SizedBox(
                  height: 35,
                ),

                // Example 4
                FAExampleFour(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FAExampleOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterAvatar(
      backgroundColor: Colors.red,
      radius: 50,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      badge: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.green,
        ),
        child: Icon(
          Icons.add,
          size: 20,
          color: Colors.white,
        ),
      ),
      badgePosition: BadgePosition.topRight,
      avatarShadow: BoxShadow(
        color: Colors.purple.withOpacity(0.6),
        blurRadius: 20,
        spreadRadius: 5,
        offset: Offset(0, 2),
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
  }
}

class FAExampleTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterAvatar(
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
  }
}

class FAExampleThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterAvatar(
      backgroundColor: Colors.purple,
      radius: 50,
      shape: BoxShape.circle,
      badge: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        child: Icon(
          Icons.photo_camera,
          size: 15,
          color: Colors.white,
        ),
      ),
      badgePosition: BadgePosition.bottomRight,
      avatarShadow: BoxShadow(
        color: Colors.purple.withOpacity(0.6),
        blurRadius: 20,
        spreadRadius: 5,
        offset: Offset(0, 2),
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
  }
}

