import 'package:flutter/material.dart';
import 'package:lesson3456_1/listview_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
      routes: {
        // When navigating to the "/second" route, build the SecondScreen widget.
        ROUTES_LISTVIEW_SCREEN: (context) => ListViewScreen('Du lieu truyen tu Screen 1'),
      },
      theme: ThemeData(
          dividerTheme: const DividerThemeData(
        thickness: 0.5,
        color: Colors.brown,
        indent: 10,
        endIndent: 10,
      )),
    );
  }
}

const ROUTES_LISTVIEW_SCREEN = '/listview_screen';

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Column Sample'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Center(
            child: Column(
              children: <Widget>[
                buildStack(),
                SizedBox(
                  height: 10,
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
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 2,
                        child: Container(
                          color: Colors.redAccent,
                          width: 100,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: Colors.grey,
                        width: 60,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Container(
                          color: Colors.brown,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.greenAccent,
                    width: 100,
                    height: 300,
                  ),
                ),
                buildDecorationText(),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () async {
                    var result = await Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return ListViewScreen('Du lieu truyen tu Screen 1');
                    }));

                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(result.toString())));
                  },
                  child: Text('Go to screen 2'),
                ),

                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () async {
                    var result = await Navigator.pushNamed(context, ROUTES_LISTVIEW_SCREEN);

                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(result.toString())));
                  },
                  child: Text('Go to screen 2'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDecorationText() {
    return SizedBox(
      width: 250,
      height: 250,
      child: Stack(
        children: <Widget>[
          Container(
            width: 250,
            height: 250,
            color: Colors.white,
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.black.withAlpha(0),
                  Colors.black12,
                  Colors.black45
                ],
              ),
            ),
            child: const Text(
              'Foreground Text',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStack() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      clipBehavior: Clip.antiAlias,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.green,
        ),
        Positioned(
          left: 0,
          top: 90,
          child: Container(
            width: 80,
            height: 80,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
