import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:noor_e_umrah/utils/app_style.dart';

// void main() {
//   runApp(MyApp());
// }

class MySlider extends StatelessWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageSlideshow(
        /// Width of the [ImageSlideshow].
        width: double.infinity,

        /// Height of the [ImageSlideshow].
        height: 200,

        /// The page to show when first creating the [ImageSlideshow].
        initialPage: 0,

        /// The color to paint the indicator.
        indicatorColor: AppStyle.red,

        /// The color to paint behind th indicator.
        indicatorBackgroundColor: AppStyle.black,

        /// Called whenever the page in the center of the viewport changes.
        onPageChanged: (value) {
          print('Page changed: $value');
        },

        /// Auto scroll interval.
        /// Do not auto scroll with null or 0.
        autoPlayInterval: 3000,

        /// Loops back to first slide.
        isLoop: true,

        /// The widgets to display in the [ImageSlideshow].
        /// Add the sample image file into the images folder
        children: [
          Image.asset(
            'assets/macca.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/maccaa.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/macca.jpg',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
