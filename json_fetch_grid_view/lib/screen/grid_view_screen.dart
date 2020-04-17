import 'package:flutter/material.dart';
import 'package:json_fetch_grid_view/models/fetch_json_model.dart';
import 'package:json_fetch_grid_view/services/networkCall.dart';
import 'package:json_fetch_grid_view/utils/common_components.dart';
import 'package:json_fetch_grid_view/utils/constants.dart';

class GridViewScreen extends StatefulWidget {
  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  bool isDataLoading;

  @override
  void initState() {
    super.initState();
    isDataLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ComComp.getAppBar(COLORS.APP_THEME_COLOR, "Top Anime"),
      body: Center(
          child: Container(
        child: FutureBuilder<List<Top>>(
          future: NetworkCall.fetchTrendingAnimeData(),
          builder: (context, snapshot) {
            return snapshot.connectionState == ConnectionState.done
                ? snapshot.hasData
                    ? ComComp.homeGrid(snapshot, gridClicked)
                    : ComComp.retryButton(fetch)
                : ComComp.circularProgress();
          },
        ),
      )),
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
