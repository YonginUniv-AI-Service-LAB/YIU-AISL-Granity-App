import 'package:flutter/material.dart';

import 'package:granity/screens/login/login.dart';
import 'package:granity/screens/join/join.dart';
import 'package:granity/screens/home/home.dart';

final routes = {
  '/': (BuildContext context) => HomeScreen(),
  '/join': (BuildContext context) => JoinScreen(),
  '/login': (BuildContext context) => LoginScreen(),
};
