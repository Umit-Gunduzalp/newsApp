import 'package:get/get.dart';
import 'package:news_app/src/model/news_model.dart';
import 'package:news_app/src/repositories/news_services.dart';

class HomePageController extends GetxController{

  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  RxList<NewsData?> newsDataList = <NewsData>[].obs;
  RxBool isLoading = false.obs;

  void fetchNews() async {
    try{
      isLoading.value = true;
      newsDataList.clear();
      newsDataList.value = await NewsService().fetchNews();
      isLoading.value = false;
    } catch(e){
      print(e);
    }
  }
}