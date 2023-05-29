import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/src/model/news_model.dart';
import 'package:news_app/src/pages/news_detail.dart';
import 'package:news_app/src/theme/app_sizes.dart';
import 'package:news_app/src/theme/dividers.dart';
import 'package:news_app/src/theme/text_styles.dart';
import 'package:news_app/src/widgets/image_place_holder.dart';

class NewsListItem extends StatelessWidget {
  const NewsListItem({
    super.key,
    required this.item,
    required this.imageUrl,
  });

  final NewsData? item;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(NewsDetails(item));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "from: ${item?.source} >",
                style: bold12(context: context)
            ),
            Dividers.vertical(8),
            Row(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${item!.title}",
                        style: bold16(context: context, height: AppSizes.height(1.1)),
                      ),
                      Dividers.vertical(6),
                      Text(
                        "${item!.resultAbstract}",
                        style: regular12(context: context),
                      ),
                      Dividers.vertical(6),
                      Text(
                        "${item?.publishedDate}",
                        style: regular12(context: context)
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Dividers.horizontal(8),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3)
                    ),
                    child: ImagePlaceholder(
                      imageUrl: imageUrl,
                      width: AppSizes.width(100),
                      height: AppSizes.height(100),
                    ),
                  ),
                ),
              ],
            ),
            Dividers.vertical(8),
            Container(
              height: 0.3,
              color: Colors.grey.shade400,
            )
          ],
        ),
      ),
    );
  }
}