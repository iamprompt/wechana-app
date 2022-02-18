import 'package:flutter/material.dart';
import 'package:wechana_app/components/bottom_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onTap(int index) {
      print('onTap: $index');
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.yellow,
      // ),
      body: const Center(
        child: Text('Home'),
      ),
      bottomNavigationBar: bottomNavBar(context),
    );
  }
}
