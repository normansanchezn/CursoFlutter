import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Movie"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white,),
            onPressed: (){},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
            child: Material()),
            ListTile(
              title: Text("Películas"),
              trailing: Icon(Icons.local_movies),
            ),
            Divider(
              height: 5.0,
            ),
            ListTile(
              title: Text("Televisión"),
              trailing: Icon(Icons.live_tv),
            ),
            Divider(
              height: 5.0,
            ),
            ListTile(
              title: Text("Cerrar"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
        
      bottomNavigationBar: BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems(){
      return [
        BottomNavigationBarItem(
          icon: Icon(Icons.thumb_up),
          title: Text("Populares")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.update),
          title: Text("Próximamente")
        ),BottomNavigationBarItem(
          icon: Icon(Icons.star),
          title: Text("Mejor valoradas")
        )
      ];
    }
}