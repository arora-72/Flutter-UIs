
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:streaming_service_ui/models/animeListModel.dart';
import 'package:streaming_service_ui/screens/single_anime_screen.dart';

class ContentScroll extends StatelessWidget {
  const ContentScroll({Key key}) : super(key: key);

  List<Widget> animes(BuildContext context) {
    List<Widget> animeList = new List();

    for (int i = 0; i < animeLists.length; i++) {
      var movieitem = Padding(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 12.0),
        child: Container(
          height: 220.0,
          width: 135.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0))
              ]),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SingleAnimeScreen(
                          anime: animeLists[i],
                        ),
                      )),
                  child: Image.asset(
                    animeLists[i].imageUrl,
                    width: double.infinity,
                    height: 130.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
                child: Text(animeLists[i].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: "SF-Pro-Display-Bold",
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.0),
                child: Text(i == 0 ? "Season 2" : ""),
              )
            ],
          ),
        ),
      );
      animeList.add(movieitem);
    }
    return animeList;
  }

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
              padding: EdgeInsets.only(left: 30.0, right: 0.0),
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
