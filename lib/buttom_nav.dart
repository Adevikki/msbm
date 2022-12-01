import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:msbm/screens/dashboard.dart';
import 'package:msbm/screens/my_learning.dart';

class CustomBottomNavigation extends ConsumerStatefulWidget {
  static const routeName = 'bottom_navigation';

  final int tabIndex;

  const CustomBottomNavigation({
    Key? key,
    this.tabIndex = 0,
  }) : super(key: key);

  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState
    extends ConsumerState<CustomBottomNavigation> {
  int? _selectedIndex = 0;
  // late Timer _timer;

  static const List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    SizedBox(),
    MyLearning(),
    SizedBox(),
    SizedBox(),
  ];

  void _onItemTapped(int? index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _selectedIndex = widget.tabIndex;

    super.initState();
  }

  @override
  void dispose() {
    // _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex!),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              blurRadius: 2, // soften the shadow
              spreadRadius: 0.5, //extend the shadow
              offset: const Offset(
                2, // Move to right 10  horizontally
                2,
                // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        height: isIos() ? 70 : 60,
        child: Padding(
          padding: EdgeInsets.only(
            left: 17,
            right: 17,
            top: 8,
            bottom: isIos() ? 20 : 4,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomBarMenu(
                context: context,
                image: _selectedIndex == 0
                    ? 'assets/images/star2.png'
                    : 'assets/images/star2.png',
                selectIndex: 0,
                text: 'Featured',
              ),
              bottomBarMenu(
                context: context,
                image: _selectedIndex == 1
                    ? 'assets/images/search.png'
                    : 'assets/images/search.png',
                selectIndex: 1,
                text: 'Search',
              ),
              bottomBarMenu(
                context: context,
                image: _selectedIndex == 2
                    ? 'assets/images/play.png'
                    : 'assets/images/play.png',
                selectIndex: 2,
                text: 'My learning',
              ),
              bottomBarMenu(
                context: context,
                image: _selectedIndex == 3
                    ? 'assets/images/love.png'
                    : 'assets/images/love.png',
                selectIndex: 3,
                text: 'Wishlist',
              ),
              bottomBarMenu(
                context: context,
                image: _selectedIndex == 4
                    ? 'assets/images/account.png'
                    : 'assets/images/account.png',
                selectIndex: 4,
                text: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material bottomBarMenu({
    required BuildContext context,
    String? image,
    int? selectIndex,
    String? text,
  }) {
    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () {
          _onItemTapped(selectIndex);
        },
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Image.asset(
                '$image',
                width: 24,
                height: 24,
                color:
                    _selectedIndex == selectIndex ? Colors.white : Colors.grey,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                '$text',
                style: TextStyle(
                  color: selectIndex == _selectedIndex
                      ? Colors.white
                      : Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

bool isIos() {
  if (Platform.isIOS) {
    return true;
  } else {
    return false;
  }
}
