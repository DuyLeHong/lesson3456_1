import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: buildHomeScreen(),
    ),
  );
}

Widget buildHomeScreen() {
  return Scaffold(
    appBar: AppBar(
      title: Text('My Test Home Page'),
    ),
    body: Container(
        alignment: Alignment.center,
        width: 390,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Home Screen'),
            SizedBox(
              height: 20,
            ),
            Image.network(
              'https://images.sudouest.fr/2020/09/13/5f5e4a9b66a4bd4d1cd490cf/widescreen/1000x500/passe-par-le-servette.jpg',
              width: 250,
            ),
          ],
        )),
  );
}
