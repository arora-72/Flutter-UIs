import 'package:flutter/material.dart';
import 'package:streaming_service_ui/models/animeListModel.dart';
import 'package:streaming_service_ui/widgets/horizontal_content_scroll.dart';

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
         HorizontalContentScroll(animeLists: animeLists,
         listTitle: 'Top Anime',),
          SizedBox(
            height: 5.0,
            
          ),
          HorizontalContentScroll(animeLists: animeLists,
         listTitle: 'My Favourites',),
          SizedBox(
            height: 5.0,
          ),
          HorizontalContentScroll(animeLists: animeLists,
         listTitle: 'Trending anime',),
          SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}