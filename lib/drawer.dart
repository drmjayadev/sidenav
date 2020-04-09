
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'menu_model.dart';

class DrawerWidget extends StatelessWidget {
  final String title;

  DrawerWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor:
              Color.fromRGBO(58, 66, 86, 1.0), //This will change the drawer background to blue.
          //other styles
        ),
        child: new ScopedModelDescendant<MenuModel>(
          builder: (context, child, model){
          return Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything
        
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 60, horizontal: 16),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: CircleAvatar(
                          maxRadius: 35.0,
                          backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/02/16/23/10/smile-2072907_960_720.jpg",
                          ),
                        ),
                      ),
                      SizedBox(width: 21),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "Joan Mzuri",
                                    maxLines: 2,
                                    overflow: TextOverflow.clip,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline
                                        .apply(
                                            fontWeightDelta: 0,
                                            color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "joanmzuri@drawer.com",
                              style: Theme.of(context).textTheme.subtitle.apply(
                                  color: Colors.white70, fontWeightDelta: -2),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(color: model.position==1?Colors.white:Colors.transparent, width: 5))),
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.group,
                    color: Colors.white,
                    size: 40,
                  ),
                  title: Text(
                    'Debtors',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .apply(fontWeightDelta: model.position==1?0:-1, color: Colors.white),
                  ),
                  onTap: () {
                    // Update the state of the app
                    model.changePosition(1);
                     Navigator.of(context).popAndPushNamed("/debtors");
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                  border:
                      Border(left: BorderSide(color: model.position==2?Colors.white:Colors.transparent, width: 5)),
                ),
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.bookmark,
                    size: 36,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Contacts',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .apply(fontWeightDelta: model.position==2?0:-1, color: Colors.white),
                  ),
                  onTap: () {
                    // Update the state of the app
                    model.changePosition(2);
                    
                     Navigator.of(context).popAndPushNamed("/contact");
                    
                    
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                  border:
                      Border(left: BorderSide(color: model.position==3?Colors.white:Colors.transparent, width: 5)),
                ),
                child: ListTile(
                  leading: Icon(
                  CupertinoIcons.clock,
                  size: 36,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Statistics',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .apply(fontWeightDelta: model.position==3?0:-1, color: Colors.white),
                  ),
                  onTap: () {
                    // Update the state of the app
                    model.changePosition(3);
                    Navigator.of(context).popAndPushNamed("/stats");
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                  border:
                      Border(left: BorderSide(color: model.position==4?Colors.white:Colors.transparent, width: 5)),
                ),
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled,
                    size: 36,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Profile',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .apply(fontWeightDelta: model.position==4?0:-1, color: Colors.white),
                  ),
                  onTap: () {
                    // Update the state of the app
                    model.changePosition(4);
                    Navigator.of(context).popAndPushNamed("/profile");
                  },
                ),
                
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                  border:
                      Border(left: BorderSide(color: model.position==5?Colors.white:Colors.transparent, width: 5)),
                ),
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.settings,
                    size: 36,
                    color: Colors.white, 
                  ),
                  title: Text(
                    'Settings',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .apply(fontWeightDelta: model.position==5?0:-1, color: Colors.white),
                  ),
                  onTap: () {
                    // Update the state of the app
                    model.changePosition(5);
                    Navigator.of(context).popAndPushNamed("/settings");
                  },
                ),
                
              ),
            ],
          ),
        );
          }),
    );
  }
}
