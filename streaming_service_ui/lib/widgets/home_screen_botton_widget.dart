import 'package:flutter/material.dart';
import 'horizontal_scroll_list.dart';

class BottomPartHomeScreen extends StatefulWidget {
  BottomPartHomeScreen({Key key}) : super(key: key);

  @override
  _BottomPartHomeScreenState createState() => _BottomPartHomeScreenState();
}

class _BottomPartHomeScreenState extends State<BottomPartHomeScreen> {

  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Top anime',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () => print('View More'),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250.0,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, right: 0.0, top: 0.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: animes(context),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'My favourites',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () => print('View More'),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250.0,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, right: 0.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: animes(context),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Trending Anime',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () => print('View More'),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250.0,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, right: 0.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: animes(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}