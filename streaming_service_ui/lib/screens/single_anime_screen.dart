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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white54,
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.arrow_back),
                          color: Colors.black,
                        )),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white54,
                      child: IconButton(
                        hoverColor: Colors.white,
                        onPressed: () => print('Add to Favourites'),
                        icon: Icon(Icons.favorite_border),
                        iconSize: 30.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
