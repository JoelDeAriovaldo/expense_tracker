import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{
  const NavBar({super.key, required this.selectedIndex, required this.onDestinationSelected});

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context){
    return Navigator(
      selectedIndex: currentPageIndex,
      onDestinationSelected: (int index){
        setState((){
          currentPageIndex = index;
        })
      },
      destinations: const <Widget>[
        NavigationDestination(icon: Icon(Icons.explore), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.commute), label: 'Transaction'),
      ]
    );
  }
}