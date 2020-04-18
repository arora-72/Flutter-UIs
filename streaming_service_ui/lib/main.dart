import 'package:flutter/material.dart';
import 'package:streaming_service_ui/screens/home_page_screen.dart';
import 'package:streaming_service_ui/screens/list_display_allshows.dart';

void main() => runApp(
  MaterialApp(
    theme: ThemeData(
       primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7)
    ),
    home: ListDisplayShows(),
    debugShowCheckedModeBanner: false,

  )
);


