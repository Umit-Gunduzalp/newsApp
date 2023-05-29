import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/src/constants/images.dart';
import 'package:news_app/src/controllers/home_page_controller.dart';
import 'package:news_app/src/model/news_model.dart';
import 'package:news_app/src/widgets/news_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // this code is for MyController class dependency injection
  final HomePageController _homeControllerPut = Get.put(HomePageController());
  final _homeControllerFind = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    List<NewsData?> news = (_homeControllerFind.newsDataList);
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            title: const Text(
              "NY Times Most Popular",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            elevation: 1,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _homeControllerFind.isLoading.value
                    ? const LinearProgressIndicator()
                    : Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async {
                            _homeControllerFind.fetchNews();
                          },
                          child: newsListState(news),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView newsListState(List<NewsData?> news) {
    return ListView.builder(
      itemCount: news.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final item = news[index];
        String imageUrl = item!.media!.isNotEmpty
            ? item.media![0]!.mediaMetadata[0].url
            : Constants.defaultImage;
        return NewsListItem(item: item, imageUrl: imageUrl);
      },
    );
  }
}
