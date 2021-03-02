import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_token_travel/Home/pages/about_page.dart';
import 'package:project_token_travel/Home/pages/activity_page.dart';
import 'package:project_token_travel/Home/pages/home_page.dart';
import 'package:project_token_travel/Home/pages/point_page.dart';
import 'package:project_token_travel/Home/pages/stock_page.dart';

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {

  int _pages = 0;

  final HomePage _homePage = HomePage();
  final StockPage _stockPage = new StockPage();
  final PointPage _pointPage = new PointPage();
  final AboutPage _aboutPage = new AboutPage();
  final ActivityPage _activityPage = new ActivityPage();

  Widget _showPage = new HomePage();

  Widget _pagechooser(int page){
    switch (page) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _stockPage;
        break;
      case 2:
        return _pointPage;
        break;
      case 3:
        return _aboutPage;
        break;
      default:
        return _activityPage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: _showPage,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        // initialIndex: _pages,
        color: Colors.pink,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.pink,
        // height: 50.0,
        items: [
          Icon(Icons.home, size: 20, color: Colors.black,),
          Icon(Icons.list, size: 20, color: Colors.black,),
          Icon(Icons.auto_fix_high, size: 20, color: Colors.black,),
          Icon(Icons.person_pin, size: 20, color: Colors.black,),
          Icon(Icons.auto_awesome, size: 20, color: Colors.black,),
        ],
        animationDuration: Duration(
            milliseconds: 200
        ),
        animationCurve: Curves.bounceInOut,
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _pagechooser(tappedIndex);
          });
        },
      ),
    );
  }
}
