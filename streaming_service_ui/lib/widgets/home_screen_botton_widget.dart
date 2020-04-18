import 'package:flutter/material.dart';

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
      // child: Column(
      //   children: <Widget>[
      //     HorizontalContentScroll(listTitle: 'Top Anime',
      //     topAnimeLists: animeLists,),
        
      //     SizedBox(
      //       height: 5.0,
            
      //     ),
      //      HorizontalContentScroll(listTitle: 'Trending Anime',
      //     topAnimeLists: topAnimeLists,),
      //     SizedBox(
      //       height: 5.0,
      //     ),
      //     HorizontalContentScroll(listTitle: 'My Animes',
      //     topAnimeLists: topAnimeLists,),
      //     SizedBox(
      //       height: 5.0,
      //     ),
      //   ],
      // ),
    );
  }
}