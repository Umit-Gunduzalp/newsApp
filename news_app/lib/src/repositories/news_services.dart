import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/src/constants/urls.dart';
import 'package:news_app/src/model/news_model.dart';

class NewsService {
  Future<List<NewsData>> fetchNews() async {
    final String apiKey = dotenv.env['newsApiKey'] ?? '';
    const String url = Urls.baseUrl;

    Response response = await Dio().get(url, queryParameters: {'api-key': apiKey});
    if (response.statusCode! >= 200 && response.statusCode! <= 299) {
      return NewsModel.fromJson(response.data).results;
    } else {
      return throw Exception('Error: ${response.statusCode}');
    }
  }
}
