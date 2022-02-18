import 'package:flutter/material.dart';
import 'package:wechana_app/components/bottom_bar.dart';
import 'package:wechana_app/models/bottom_bar_item.dart';
import 'package:wechana_app/screens/history.dart';
import 'package:wechana_app/screens/home.dart';
import 'package:wechana_app/screens/profile.dart';

class MyMainApp extends StatefulWidget {
  const MyMainApp({Key? key}) : super(key: key);

  @override
  _MyMainAppState createState() => _MyMainAppState();
}

class _MyMainAppState extends State<MyMainApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  // Widget _buildBottomBar() {
  //   return CustomBottomBar(
  //     containerHeight: 70,
  //     backgroundColor: Colors.white,
  //     selectedIndex: _currentIndex,
  //     showElevation: true,
  //     itemCornerRadius: 24,
  //     curve: Curves.easeIn,
  //     onItemSelected: (index) => setState(() => _currentIndex = index),
  //     items: <BottomNavyBarItem>[
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.home),
  //         title: Text('Home'),
  //         activeColor: Colors.green,
  //         inactiveColor: _inactiveColor,
  //         textAlign: TextAlign.center,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.person),
  //         title: Text('Home'),
  //         activeColor: Colors.green,
  //         inactiveColor: _inactiveColor,
  //         textAlign: TextAlign.center,
  //       ),
  //     ],
  //   );
  // }

  Widget _buildBottomBar() {
    return BottomBar(
      items: bottomBarItems,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      selectedIndex: _currentIndex,
      elevation: 5,
    );
  }

  Widget getBody() {
    List<Widget> pages = const [
      HomePage(),
      HistoryPage(),
      ProfilePage(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
