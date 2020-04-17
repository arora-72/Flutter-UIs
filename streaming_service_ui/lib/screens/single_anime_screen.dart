import 'package:flutter/material.dart';
import 'package:streaming_service_ui/models/animeListModel.dart';
import 'package:streaming_service_ui/models/top_anime_model.dart';
import 'package:streaming_service_ui/widgets/circular_clipper.dart';

class SingleAnimeScreen extends StatefulWidget {
  @override
  _SingleAnimeScreenState createState() => _SingleAnimeScreenState();

  final Top top;
  SingleAnimeScreen({this.top});
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
                  tag: widget.top.imageUrl,
                  child: ClipShadowPath(
                    clipper: CircularClipper(),
                    shadow: Shadow(blurRadius: 20.0),
                    child: Image.network(
                       widget.top.imageUrl,
                       height: 400.0,
                       width: double.infinity,
                       fit: BoxFit.cover,
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
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
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
              Positioned.fill(
                bottom: 10.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RawMaterialButton(
                    padding: EdgeInsets.all(10.0),
                    elevation: 12.0,
                    onPressed: () => print('PLay Video'),
                    shape: CircleBorder(),
                    fillColor: Colors.white,
                    child:
                        Icon(Icons.play_arrow, size: 60.0, color: Colors.red),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0.0,
                  left: 20.0,
                  child: IconButton(
                    onPressed: () => print('Add to my list'),
                    icon: Icon(Icons.add),
                    iconSize: 40.0,
                    color: Colors.black,
                  )),
              Positioned(
                  bottom: 0.0,
                  right: 20.0,
                  child: IconButton(
                    onPressed: () => print('Share'),
                    icon: Icon(Icons.share),
                    iconSize: 35.0,
                    color: Colors.black,
                  )),
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.top.title.toUpperCase(),
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Mangaka, Dreams, Inspiration",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Score: ${widget.top.score}",
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Start Date',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            widget.top.startDate,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Type',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            widget.top.type.toString().split(".")[1],
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Episodes',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            widget.top.episodes.toString(),
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    height: 120.0,
                    child: SingleChildScrollView(
                      child: Text(
                        widget.top.title + widget.top.imageUrl,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
