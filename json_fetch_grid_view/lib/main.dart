import 'package:flutter/material.dart';
import 'package:json_fetch_grid_view/screen/grid_view_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Demo App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new GridViewScreen(),
    );
  }
}