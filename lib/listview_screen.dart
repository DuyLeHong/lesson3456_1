import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Screen'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Entry A')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: const Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: const Center(child: Text('Entry C')),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Screen 1')),
          ],
        ),
      ),
    );
  }
}
