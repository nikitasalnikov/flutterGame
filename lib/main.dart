import 'dart:ffi';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCheked = false;
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          elevation: 10,
          actions: const [
            Icon(Icons.person),
            SizedBox(
              width: 10,
            ),
          ],
          title: const Text('Demo'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.blueGrey[400],
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Checkbox(
                    value: isCheked,
                    onChanged: (value) {
                      setState(() {
                        isCheked = value as bool;
                      });
                    },
                    activeColor: Colors.red,
                    checkColor: Colors.blue,
                    side: const BorderSide(
                      width: 2,
                      color: Colors.amber,
                    ),
                    shape: CircleBorder(),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (val) {
                      setState(() {
                        isSwitched = val;
                      });
                    },
                    activeColor: Colors.green,
                    activeTrackColor: Colors.lightGreenAccent,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Icon>[
                  Icon(
                    isCheked ? Icons.table_chart : Icons.table_chart_outlined,
                    size: 50,
                    color: isCheked ? Colors.red : Colors.green,
                  ),
                  Icon(
                    !isSwitched ? Icons.list : Icons.grid_on,
                    size: 50,
                    color: !isSwitched ? Colors.red : Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
