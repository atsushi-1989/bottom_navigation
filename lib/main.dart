import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int _selectedIndex = 0;

  void _onTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'bottomNavigationBar',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Theme.of(context).disabledColor,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onTap,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            // icon: FaIcon(FontAwesome5Solid.crown),
            // icon: FaIcon(CommunityMaterialIcons.crown_outline, size: 35),
            icon: Icon(PhosphorIcons.crown_bold),
            backgroundColor: Theme.of(context).accentColor,
            label: 'ランキング',
          ),
          BottomNavigationBarItem(
            // icon: FaIcon(Octicons.search),
            icon: Icon(PhosphorIcons.magnifying_glass_bold),
            backgroundColor: Theme.of(context).accentColor,
            label: '検索',
          ),
          BottomNavigationBarItem(
            // icon: FaIcon(FontAwesome5.star),
            icon: Icon(PhosphorIcons.star_bold),
            backgroundColor: Theme.of(context).accentColor,
            label: 'お気に入り',
          ),
          BottomNavigationBarItem(
              // icon: FaIcon(FontAwesome5.user),
              icon: Icon(PhosphorIcons.user_bold),
              backgroundColor: Theme.of(context).accentColor,
              label: 'アカウント'),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
