import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:streaming_service_ui/models/top_anime_model.dart';
import 'package:streaming_service_ui/utils/constants.dart';

class NetworkCall {
  static Future<List<Top>> fetchTrendingAnimeData() async {
    final response = await http.get(APPURLS.SAMPLE_URL);
    try {
      if (response.statusCode == 200) {
        List<Top> list = parseJsonData(response.body);
        return list;
      } else {
        throw Exception(MESSAGES.INTERNET_ERROR);
      }
    } catch (e) {
    print(e);
      throw Exception(MESSAGES.INTERNET_ERROR_RETRY);
    }
  }

  static List<Top> parseJsonData(String responseBody) {
    // print(responseBody);
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    List<Top> trendingAnimeLists =  parsed['top']
        .map<Top>((json) => Top.fromJson(json))
        .toList();
    
    

    return trendingAnimeLists;
  }
}
