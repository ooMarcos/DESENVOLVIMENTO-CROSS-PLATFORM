import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fiap Scaffold',
      home: Scaffold(
          appBar: _appBar(),
          body: _bodyCenter(),
          floatingActionButton: _floatingActionButton(),
          drawer: _drawer(),
          persistentFooterButtons: _persistentFooterButtons(),
          bottomNavigationBar: _bottomNavigationBar(),
          endDrawer: _drawer()),
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Text('Fiap Scaffold'),
    );
  }

  Widget _bodyCenter() {
    return Center(
      child: Text(
        "Fiap",
        style: TextStyle(
          color: Colors.black,
          fontSize: 40.0,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
      elevation: 10.0,
      child: Icon(Icons.add),
      onPressed: () {
        print('_floatingActionButtonpressed');
      },
    );
  }

  Widget _drawer() {
    return Drawer(
      elevation: 16.0,
      child: Center(
        child: Text("Menu Lateral"),
      ),
    );
  }

  _persistentFooterButtons() {
    return <Widget>[
      RaisedButton(
        child: Text("-"),
        onPressed: () {},
      ),
      RaisedButton(
        child: Text("+"),
        onPressed: () {},
      ),
    ];
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: 0,
      fixedColor: Colors.teal,
      items: [
        BottomNavigationBarItem(
          title: Text("Home"),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text("Search"),
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          title: Text("Add"),
          icon: Icon(Icons.add_box),
        ),
      ],
      onTap: (int index) {},
    );
  }
}