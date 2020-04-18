import 'package:flutter/material.dart';
import 'package:streaming_service_ui/models/top_anime_model.dart';

class ListViewCommon {
  static Padding listViewCommon(
      AsyncSnapshot<List<Top>> snapshot, Function gridClicked) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0, top: 30.0),
      child: ListView.builder(
       
          // padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
          shrinkWrap: true,
          itemCount: snapshot.data.length,
          
          itemBuilder: (BuildContext context, int index) {
            Top top = snapshot.data[index];
            
             print(snapshot.data.length);
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                  height: 170.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(112.0, 10.0, 10.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 120.0,
                              child: Text(
                                top.title,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '\$${top.rank}',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Rank',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "Score: ${top.score}",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5.0),
                              width: 80.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).accentColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                top.startDate,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              padding: EdgeInsets.all(5.0),
                              width: 80.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).accentColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                top.runtimeType.toString(),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  top: 15.0,
                  bottom: 15.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      width: 110.0,
                      image: NetworkImage(top.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            );
          }), 
    );
  }
}
