import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              TeksGemuk(
                text: 'Edi Kurniawan',
                 warna: Colors.blue,
              ),
              TeksGemuk(
                text: 'Flutter',
              ),
              Image.network('https://i1.wp.com/techweez.com/wp-content/uploads/2018/05/minion.gif?fit=748%2C561&ssl=1'),
              Text("Halo Flutter"),
              Text("Halo Flutter"),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.home),
                    Icon(Icons.android),
                    Icon(Icons.settings),
                  ],
                ),
              ),
              Text("Halo Flutter"),
              Text("Halo Flutter"),
              Text("Halo Flutter"),
              Text("Halo Flutter"),
            ],
          ),
        ),
        bottomNavigationBar: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favorite',
            ),
            Tab(
              icon: Icon(Icons.account_circle),
              text: 'Profile',
            )
          ],
        ),
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'Favorite',
              ),
              Tab(
                text: 'Profile',
              )
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: Icon(Icons.home),
          title: GestureDetector(
              onTap: () {
                print('Text di click');
              },
              child: Text('Toolbar')),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print('disentuh');
              },
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {
                print('disentuh');
              },
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}

class TeksGemuk extends StatelessWidget {
  final String text;
  final Color warna;
  TeksGemuk({this.text, this.warna= Colors.red});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: warna,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
