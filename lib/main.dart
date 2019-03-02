import 'package:flutter/material.dart';
import 'package:code_app/ui/alarm.dart';
import 'package:code_app/ui/upload.dart';
import 'package:code_app/ui/play.dart';
import 'package:code_app/ui/capture.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    title: 'Hello World',
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      routes: <String, WidgetBuilder>{
        '/Alarm': (BuildContext context) => new AlarmPage(),
        '/Play': (BuildContext context) => new PlayPage(),
        '/Upload': (BuildContext context) => new UploadPage(),
        '/Capture': (BuildContext context) => new CapturePage(),
      },
      home: new AlarmPage(),
    );
  }
}
