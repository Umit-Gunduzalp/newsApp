import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/src/constants/images.dart';
import 'package:news_app/src/model/news_model.dart';
import 'package:news_app/src/theme/text_styles.dart';
import 'package:news_app/src/widgets/image_place_holder.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails(this.item, {Key? key}) : super(key: key);
  final NewsData? item;

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    String? imageUrl = Constants.defaultImage;
    if (widget.item!.media!.isNotEmpty &&
        widget.item!.media!.first!.mediaMetadata.isNotEmpty &&
        widget.item!.media!.first!.mediaMetadata.length > 2) {
      imageUrl = widget.item?.media!.first!.mediaMetadata[2].url;
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius:  const BorderRadius.only(
                      bottomRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                    child: ImagePlaceholder(
                      imageUrl: imageUrl!,
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
                      width: 34,
                      height: 34,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child:  const Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.item?.title}",
                      style: bold24(
                        context: context,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "from: ${widget.item?.source} >",
                      style: bold10(context: context),
                    ),
                      const SizedBox(height: 8),
                    Text(
                      "${widget.item?.byline}",
                      style: regular12(context: context),
                    ),
                      const SizedBox(height: 8),
                    Text(
                      "${widget.item?.resultAbstract}",
                      style: regular14(context: context),
                    ),
                      const SizedBox(height: 8),
                    Text(
                      "${widget.item?.publishedDate}",
                      style: regular10(context: context)
                          .copyWith(color: Colors.grey),
                    ),
                      const SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
