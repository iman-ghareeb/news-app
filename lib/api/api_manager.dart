import 'package:http/http.dart' as http;
class EndPoints{

  static String SOURCES = 'v2/top-headlines/sources';

  static String TOP_HEADLINES = 'v2/top-headlines';
}

class APIManager{

  static String serverUrl = 'newsapi.org';
  static String apiKey = '5f59f721c6ed45028efc2dba3c9840da';

 static Future<http.Response> getData(Map<String,dynamic>query,{required String endPoint})async{

    var url = Uri.https(serverUrl,endPoint, query);

    return await http.get(url, headers: {'X-Api-Key':apiKey});
  }
}