import 'package:farm/screens/dashboard.dart';
import 'package:farm/screens/details_screen.dart';
import 'package:farm/screens/stateScreen.dart';
import 'package:flutter/material.dart';

final Map<String, Map<String, dynamic>> routes = {
  // "connection": {
  //   "route": "/connection",
  //   "name": "Connection",
  //   "icon": Icon(Icons.network_check),
  // },
  "dashboard": {
    "route": Dashboard.DashBoardRoute,
    "name": "الي موجود",
    "icon": Icon(Icons.home),
  },
  "details": {
    "route": Statescreen.StatescreenRoute,
    "name": "الحالة",
    "icon": Icon(Icons.details),
  },
};
