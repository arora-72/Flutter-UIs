import 'package:flutter/material.dart';
import 'package:streaming_service_ui/models/animeListModel.dart';
import 'package:streaming_service_ui/widgets/circular_clipper.dart';

class SingleAnimeScreen extends StatefulWidget {
  @override
  _SingleAnimeScreenState createState() => _SingleAnimeScreenState();

  final AnimeListModel anime;
  SingleAnimeScreen({this.anime});
}

class _SingleAnimeScreenState extends State<SingleAnimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 5.0,
      //   title: Text(
      //     widget.anime.title,
      //     style: TextStyle(
      //       color: Colors.red,
      //     ),
      //   ),
      // ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                child: Hero(
                  tag: widget.anime.imageUrl,
                  child: ClipShadowPath(
                    clipper: CircularClipper(),
                    shadow: Shadow(blurRadius: 20.0),
                    child: Image(
                      height: 400.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: AssetImage(widget.anime.imageUrl),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.only(left: 30.0),
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    color: Colors.black,
                  ),
                  IconButton(
                    hoverColor: Colors.white,
                    padding: EdgeInsets.only(left: 30.0, right: 20.0),
                    onPressed: () => print('Add to Favourites'),
                    icon: Icon(Icons.favorite_border),
                    iconSize: 30.0,
                    color: Colors.black,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
