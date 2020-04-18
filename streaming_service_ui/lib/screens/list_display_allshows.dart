import 'package:flutter/material.dart';
import 'package:streaming_service_ui/models/top_anime_model.dart';
import 'package:streaming_service_ui/services/network_calls.dart';
import 'package:streaming_service_ui/utils/common_components.dart';
import 'package:streaming_service_ui/widgets/circular_clipper.dart';
import 'package:streaming_service_ui/widgets/list_view_common.dart';

class ListDisplayShows extends StatefulWidget {
  @override
  _ListDisplayShowsState createState() => _ListDisplayShowsState();
}

class _ListDisplayShowsState extends State<ListDisplayShows> {
  bool isDataLoading;
  var top = 0.0;
  Color _theme;
ScrollController _scrollController;
    

  @override
  void initState() {
    super.initState();
    isDataLoading = false;
    _theme = Colors.transparent;
    

     _scrollController = ScrollController()
      ..addListener(
        () => _isAppBarExpanded ?
            _theme != Colors.blueAccent ?
        setState(
          () {
            _theme = Colors.blueAccent;
            print(
                'setState is called');
          },
        ):{}
            : _theme != Colors.transparent ?
        setState((){
          print(
              'setState is called');
          _theme = Colors.transparent;
        }):{},

      );
  }

    bool get _isAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: _theme,
            pinned: true,
            stretch: true,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0))),
            onStretchTrigger: () {
              // Function callback for stretch
              return;
            },
            
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
                      Text("Top Anime",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
                      'https://i.pinimg.com/564x/5c/ba/09/5cba09822a38124afa943c466274a649.jpg',
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
          ),
          FutureBuilder<List<Top>>(
              future: NetworkCall.fetchTrendingAnimeData(),
              builder: (context, snapshot) {
                var childCount = 0;
                if (snapshot.connectionState != ConnectionState.done ||
                    snapshot.hasData == null)
                  childCount = 1;
                else
                  childCount = snapshot.data.length;
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    if (snapshot.connectionState != ConnectionState.done) {
                      //todo handle state
                      return Center(
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 20.0),
                              child: CircularProgressIndicator(
                                backgroundColor: Colors.red,
                              ))); //todo set progress bar
                    }
                    if (snapshot.hasData == null) {
                      return Container();
                    }
                    Top top = snapshot.data[index];
                    print(snapshot.data.length);
                    return new Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                          height: 170.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(112.0, 10.0, 10.0, 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: 150.0,
                                      child: Text(
                                        top.title,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 4,
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          '\#${top.rank}',
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
                                        borderRadius:
                                            BorderRadius.circular(10.0),
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
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Epi. ${top.episodes}',
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
              }),
        ],
      ),
    );
  }

  setLoading(bool loading) {
    setState(() {
      isDataLoading = loading;
    });
  }

  fetch() {
    setLoading(true);
  }
}

gridClicked(BuildContext context, Top topModel) {
  print(topModel.toJson());
}
