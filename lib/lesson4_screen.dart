import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Column Sample'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.amber,
                  width: 100,
                  height: 300,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.redAccent,
                  width: 100,
                  height: 300,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.greenAccent,
                  width: 100,
                  height: 300,
                ),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
