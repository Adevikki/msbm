import 'package:flutter/material.dart';
import 'package:msbm/buttom_nav.dart';
import 'package:msbm/screens/dashboard.dart';
import 'package:msbm/screens/get_started.dart';

final Map<String, WidgetBuilder> routes = {
  GetStartedView.routeName: (context) => const GetStartedView(),
  CustomBottomNavigation.routeName: (context) => const CustomBottomNavigation(),
  DashBoard.routeName: (context) => const DashBoard(),
};
