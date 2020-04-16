

import 'package:flutter/material.dart';

import 'content_scroll.dart';

class BottomPartHomeScreen extends StatefulWidget {
  BottomPartHomeScreen({Key key}) : super(key: key);

  @override
  _BottomPartHomeScreenState createState() => _BottomPartHomeScreenState();
}

class _BottomPartHomeScreenState extends State<BottomPartHomeScreen> {

  
  @override
  Widget build(BuildContext context) {
    return ContentScroll();
  }
}