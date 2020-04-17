import 'package:flutter/material.dart';
import 'package:json_fetch_grid_view/models/fetch_json_model.dart';

class GridCell extends StatelessWidget {
  const GridCell(this.top);

  @required
  final Top top;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Padding(
        padding:
            new EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0, top: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(top.imageUrl,
                width: 150.0,
                height: 150.0,
                alignment: Alignment.center,
                fit: BoxFit.fill),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                top.title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
