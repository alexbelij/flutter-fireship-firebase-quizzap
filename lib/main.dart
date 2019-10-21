import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyFirstWidget(),
      ),
    );
  }
}

class MyFirstWidget extends StatefulWidget {
  final Color color;

  const MyFirstWidget({Key key, this.color = Colors.amber}) : super(key: key);

  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      //child: Container(width: 50, height: 50, color: widget.color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text('$count'),
            color: widget.color,
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
          Platform.isIOS
              ? Switch(value: true, onChanged: (v) => null)
              : CupertinoSwitch(value: true, onChanged: (v) => null)
        ],
      ),
    );
  }
}
