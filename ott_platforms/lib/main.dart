import 'package:flutter/material.dart';

import 'OTT_Paltform_Page.dart';
import 'homepage.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'HomePage',
      routes: {
        'HomePage': (context) => const HomePage(),
        'OTT_Platform_Page': (context) => const OTT_Platform_Page(),
      }));
}
