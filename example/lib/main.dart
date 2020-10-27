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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Avatar Home Page'),
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

              const SizedBox(
                height: 35,
              ),

              // Example 5
              FAExampleFive(),
            ],
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
    return Container();
  }
}

class FAExampleFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FAExampleFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
