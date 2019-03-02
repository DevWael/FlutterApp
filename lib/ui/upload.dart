import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pinkAccent,
        title: new Text('Upload'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.access_alarm),
            onPressed: () => debugPrint('Alarm'),
          ),
          new IconButton(
            icon: new Icon(Icons.face),
            onPressed: () => debugPrint('Face'),
          ),
          new IconButton(
            icon: new Icon(Icons.add_location),
            onPressed: () => debugPrint('Location'),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint('Pressed'),
        backgroundColor: Colors.pinkAccent,
        child: new Icon(Icons.accessibility_new),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.access_alarm), title: new Text('Alram')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.airplay), title: new Text('Play')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.cloud_upload), title: new Text('Upload')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.camera), title: new Text('Capture')),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (int x) {
          if (x == 0) {
            Navigator.of(context).pushNamed('/Alarm');
          } else if (x == 1) {
            Navigator.of(context).pushNamed('/Play');
          } else if (x == 2) {
            Navigator.of(context).pushNamed('/Upload');
          } else if (x == 3) {
            Navigator.of(context).pushNamed('/Capture');
          }
        },
      ),
    );
  }
}
