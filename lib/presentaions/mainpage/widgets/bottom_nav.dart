import 'package:flutter/material.dart';
import 'package:netflix_clonee/core/colours/colours.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);  ///1. value notifier key, change index values in bottom nav

class BottomNavigation_widget extends StatelessWidget {
  const BottomNavigation_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangeNotifier, builder:(context, int newIndex, child) { ///2.
      return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: newIndex, ///3.
          onTap: (index){
            indexChangeNotifier.value= index; ///4.
          },
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.collections),label: "New & Hot"),
            BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions_outlined),label: "Fast Laughs"),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.download),label: "Downloads"),
          ]
      );
    },);
  }
}
