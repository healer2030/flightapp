import 'package:flutter/material.dart';

import 'main.dart';

class CustomAppBottomBar extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomBarItems = [];

  final bottomNavigationBarItemStyle =
      TextStyle(fontStyle: FontStyle.normal, color: Colors.black);

  CustomAppBottomBar() {
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.flight,
          color: appTheme.primaryColor,
        ),
        title: Text("Book Flight", style: bottomNavigationBarItemStyle.copyWith(color: appTheme.primaryColor)),
      ),
    );
    bottomBarItems.add(
      new BottomNavigationBarItem(
        icon: new Icon(
          Icons.access_time,
          color: Colors.black,
        ),
        title: Text(
          "Flight Status",
          style: bottomNavigationBarItemStyle,
        ),
      ),
    );
    bottomBarItems.add(
      new BottomNavigationBarItem(
        icon: new Icon(
          Icons.check_circle_outline,
          color: Colors.black,
        ),
        title: Text(
          "Check in",
          style: bottomNavigationBarItemStyle,
        ),
      ),
    );
    bottomBarItems.add(
      new BottomNavigationBarItem(
        icon: new Icon(
          Icons.account_circle,
          color: Colors.black,
        ),
        title: Text(
          "Account",
          style: bottomNavigationBarItemStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15.0,
      child: BottomNavigationBar(
        items: bottomBarItems,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
