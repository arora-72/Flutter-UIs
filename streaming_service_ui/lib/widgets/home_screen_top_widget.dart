import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:streaming_service_ui/utils/mClipper.dart';

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

final List<String> imgList = [
  'https://news.otakukart.com/wp-content/uploads/2019/11/aoNWY72_700b.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTIYevab17y8Xqz0n9GD4Rjj_KL24LU3CUT99MLOizLY-3N-HsZ&usqp=CAU',
  'https://vignette.wikia.nocookie.net/naruto/images/2/27/Kakashi_Hatake.png/revision/latest?cb=20170628120149',
  'https://qph.fs.quoracdn.net/main-qimg-84ab05144ece30bab213f4d9669ccb23.webp',
  'https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Bakuman_Vol_1_Cover.jpg/220px-Bakuman_Vol_1_Cover.jpg',
  'https://i.ebayimg.com/images/g/bqUAAOSwAxpdrz5d/s-l300.jpg'
  ];

final List<String> imgText = [
  'Hajime No Ippo',
  'Naruto',
  'Kakashi',
  'Minato',
  'Bakuman',
  'Tanjiro'
];

final List child = map<Widget>(
  imgList,
  (index, i) {
    return Container(
      margin: EdgeInsets.all(0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
        child: Stack(
          children: <Widget>[
            Positioned(
                bottom: 0.0,
                child: Image.network(
                  i,
                  fit: BoxFit.contain,
                  width: 700,
                )),
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                    const Color(0x00000000),
                    const Color(0xD9333333)
                  ],
                      stops: [
                    0.0,
                    0.9
                  ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.0, 1.0))),
              child: Padding(
                padding: EdgeInsets.only(top: 120.0, left: 95.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "TRENDING ANIME",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "SF-Pro-Display-Bold"),
                    ),
                    Text(
                      imgText[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "SF-Pro-Display-Bold"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 420.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MClipper(),
            child: Container(
              height: 370.0,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0)
              ]),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: CarouselSlider(
                      viewportFraction: 1.0,
                      items: child,
                      autoPlay: true,
                      enlargeCenterPage: false,
                      aspectRatio: 1.0,
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                          print(_currentIndex);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 367.0,
            right: -20.0,
            child: FractionalTranslation(
              translation: Offset(0.0, -0.5),
              child: Row(
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Color(0xFFE52020),
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xFFE52020),
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 80.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Watch Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: "SF-Pro-Display-Bold"),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          RotatedBox(
                            quarterTurns: 2,
                            child: Icon(Icons.arrow_back_ios,
                                size: 25.0, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
