import 'package:facebook_app/kernel/widgets/navigation/bottom_navigation_tab.dart';
import 'package:facebook_app/modules/home/adapters/screens/home.dart';
import 'package:facebook_app/modules/pages/adapters/screens/pages.dart';
import 'package:facebook_app/modules/profile/adapters/screens/profile.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget{
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex =0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [Home(), Pages(), Profile()],
      ),
      bottomNavigationBar: BottomNavigationTab(selectedIndex: _selectedIndex, onItemTapped:_onItemTapped ,),
    );
  }
}
