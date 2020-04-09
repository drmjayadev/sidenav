import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sidenav/drawer.dart';
import 'package:sidenav/menu_model.dart';
import 'package:sidenav/pages/contact_page.dart';
import 'package:sidenav/pages/debtors_page.dart';
import 'package:sidenav/pages/settings_page.dart';
import 'package:sidenav/pages/stats_page.dart';
import 'package:sidenav/pages/profile_page.dart';

void main() => runApp(MyApp(model:new MenuModel()));

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';
  final model;

  const MyApp({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ScopedModel<MenuModel>(
      child:MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      initialRoute: "/",
  routes: {    
    '/contact': (context) => ContactPage(title: "Contact Page",),
    '/debtors': (context) => DebtorsPage(title: "Debtors Page",),
    '/stats': (context) => StatsPage(title: "Statistics Page",),
    '/profile': (context) => ProfilePage(title: "Profile Page",),
    '/settings': (context) => SettingsPage(title: "Settings Page",),
  },
    ), model: model,);
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title,
      style: TextStyle(color: Colors.white),), 
      backgroundColor: Colors.transparent,),
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: Center(child: Text('Drawer Demo!',
      style: TextStyle(color:Colors.white,
      fontSize: 24),)),
      drawer: DrawerWidget());
  }
}
