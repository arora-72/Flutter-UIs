import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_fetch_grid_view/utils/circular_clipper.dart';
import 'package:json_fetch_grid_view/utils/constants.dart';
import 'package:json_fetch_grid_view/utils/custom_clipper.dart';

SliverAppBar customAppBar(BuildContext context) {
  return SliverAppBar(
    backgroundColor: Colors.blue,
    stretch: true,
    shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0))),
    onStretchTrigger: () {
      // Function callback for stretch
      return;
    },
    pinned: true,
    expandedHeight: 300.0,
    flexibleSpace: FlexibleSpaceBar(
      stretchModes: <StretchMode>[
        StretchMode.zoomBackground,
        StretchMode.blurBackground,
        StretchMode.fadeTitle,
      ],
      centerTitle: true,
      title: SafeArea(
        child: SizedBox(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Top Anime", textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
      background: Container(
        transform: Matrix4.translationValues(0.0, -50.0, 0.0),
        child: Hero(
          tag: "sa",
          child: ClipShadowPath(
            clipper: CircularClipper(),
            shadow: Shadow(blurRadius: 20.0),
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              height: 1000.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.menu),
        tooltip: "Menu",
        onPressed: () {
          // onPressed handler
        },
      ),
    ],
  );
}
