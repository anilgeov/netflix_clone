import 'package:flutter/material.dart';
import 'package:netflix_clonee/core/colours/colours.dart';
import 'package:netflix_clonee/presentaions/downloads/download_screen.dart';
import 'package:netflix_clonee/presentaions/fast_laugh_screen/fast_laugh_screen.dart';
import 'package:netflix_clonee/presentaions/home/Home_screen.dart';
import 'package:netflix_clonee/presentaions/mainpage/widgets/bottom_nav.dart';
import 'package:netflix_clonee/presentaions/new&hot/new&hot_Screen.dart';

import '../../search/search_screen.dart';

class Screen_MainPage extends StatelessWidget {
  Screen_MainPage({super.key});

  final _pages = [
    Download_screen(),
    Home_Screen(),
    Newandhot_screen(),
    FastLaugh(),
    Search_screen(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: backgroundColor,
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index,_) {
              return _pages[index];
            },
          ),
        ),
            bottomNavigationBar: BottomNavigation_widget(),
    );
  }
}