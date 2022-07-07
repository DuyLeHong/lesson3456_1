import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  String _sData;

  ListViewScreen(this._sData, {Key? key}) : super(key: key);

  //ListViewScreen(String s);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState(_sData);
}

class _ListViewScreenState extends State<ListViewScreen> {
  String _sData;

  _ListViewScreenState(this._sData);

  @override
  Widget build(BuildContext context) {
    if (_sData == null || _sData == '') {
      var args = ModalRoute.of(context)?.settings.arguments.toString();

      if (args != null)
        _sData = args;
    }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_sData),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, entries);
            }),
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
            SizedBox(
              height: 10,
            ),
            buidListView2(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      countAddItem++;
                      entries.add(countAddItem.toString());
                      colorCodes.add(200 - countAddItem * 20);
                    });
                  },
                  child: Text('Add item'),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (countAddItem != 0) {
                        countAddItem--;
                        entries.removeLast();
                        colorCodes.removeLast();
                      }
                    });
                  },
                  child: Text('Remove item'),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, entries);
              },
              child: Text('Back to Screen 1'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }

  int countAddItem = 0;

  List<String> entries = <String>['A', 'B', 'C', 'D', 'E'];

  List<int> colorCodes = <int>[600, 500, 400, 300, 200];

  Widget buidListView2() {
    return Container(
      height: 200,
      child: ListView.separated(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Item ${entries[index]}')));
            },
            child: Container(
              height: 50,
              //color: Colors.green[colorCodes[index]],
              child: Center(child: Text('Item ${entries[index]}')),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }

// @override
// void setState(VoidCallback fn) {
//
// }
}
