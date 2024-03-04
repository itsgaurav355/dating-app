import 'package:datingapp/constants/global_variable.dart';
import 'package:datingapp/features/matches/screen/matches_screen.dart';

import 'package:datingapp/features/profile/screen/profile_screen.dart';
import 'package:datingapp/features/search/screen/search_screeen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _BottomBarState();
}

class _BottomBarState extends State<HomeScreen> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;
  final bool _isLoading = false;

  List<Widget> pages = [
    const MatchesScreen(),
    const SearchScreen(),
    const ProfileScreen()
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            )
          : pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Constants.primaryColor,
        currentIndex: _page,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        iconSize: 28,
        onTap: updatePage,
        items: [
          //Home navigation
          BottomNavigationBarItem(
            backgroundColor: Constants.primaryColor,
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? Colors.white
                        : Theme.of(context).primaryColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.favorite_border_rounded,
              ),
            ),
            label: "",
          ),
          //explore page
          BottomNavigationBarItem(
            backgroundColor: Constants.primaryColor,
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? Colors.white
                        : Theme.of(context).primaryColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.search_rounded,
              ),
            ),
            label: "",
          ),

          //Account Navigation
          BottomNavigationBarItem(
            backgroundColor: Constants.primaryColor,
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                        ? Colors.white
                        : Theme.of(context).primaryColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.person,
              ),
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
