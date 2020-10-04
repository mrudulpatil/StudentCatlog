import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:students_catlog/screens/student_list_provider.dart';
import 'package:students_catlog/utils/Common.dart';
import 'package:students_catlog/utils/constants.dart';
import 'package:students_catlog/utils/shared_pref.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DashboardScreen();
  }
}

class _DashboardScreen extends State<DashboardScreen> {
  Material MyItems(
      IconData icon, String heading, int colors, BuildContext context) {
    return Material(
        color: Colors.white,
        elevation: 14.0,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(15.0),
        child: InkWell(
            onTap: () => _callEmpList(context),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            heading,
                            style: TextStyle(
                                color: new Color(colors), fontSize: 20.0),
                          ),
                        ),

                        // Icon
                        Material(
                            color: new Color(colors),
                            borderRadius: BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(
                                icon,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard", style: TextStyle(color: Colors.white)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                MySharedPreferences.instance.setBooleanValue("loggedin", false);
                Navigator.of(context).pushReplacementNamed('/login');
              },
            )
          ],
        ),
        body: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: <Widget>[
            MyItems(Icons.graphic_eq, "TotalViews", 0xffed322b, context),
            MyItems(Icons.bookmark, "Bookmark", 0xff26cb3c3, context),
            MyItems(Icons.notifications, "Notification", 0xffff3266, context),
            MyItems(Icons.attach_money, "Balance", 0xff3399fe, context),
            MyItems(Icons.settings, "Settings", 0xfff4c83f, context),
            MyItems(Icons.group_work, "Group Work", 0xff622F74, context),
            MyItems(Icons.message, "Messages", 0xff7297ff, context),
          ],
          staggeredTiles: [
            StaggeredTile.extent(2, 130),
            StaggeredTile.extent(1, 150),
            StaggeredTile.extent(1, 150),
            StaggeredTile.extent(1, 150),
            StaggeredTile.extent(1, 150),
            StaggeredTile.extent(2, 240),
            StaggeredTile.extent(2, 120),
          ],
        ));
  }
}

_callEmpList(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => StudentListProvider()));
}
