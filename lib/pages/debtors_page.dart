
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidenav/drawer.dart';

class DebtorsPage extends StatelessWidget {
  final String title;

  DebtorsPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title, 
      style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.transparent,),
      drawerScrimColor: Colors.transparent,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: Center(child: Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24))),
          child: Icon(CupertinoIcons.group, color: Colors.white),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

        
        ),
      ),),),
      drawer: new DrawerWidget());
  }
}
