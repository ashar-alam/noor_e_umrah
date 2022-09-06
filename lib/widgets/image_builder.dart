import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  String imageUrl;
  MyImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: 40,
      width: 60,
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
            colorFilter:
                const ColorFilter.mode(Colors.red, BlendMode.colorBurn),
          ),
        ),
      ),
    );
  }
}
