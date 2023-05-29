import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImagePlaceholder extends StatelessWidget {
  final String imageUrl;
  final BoxFit boxFit;
  final double width;
  final double height;

  const ImagePlaceholder(
      {required this.imageUrl,
      required this.width,
      required this.height,
      this.boxFit = BoxFit.cover,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: boxFit,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey[400]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
        ),
      ),
    );
  }
}
