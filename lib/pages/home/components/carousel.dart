// ignore_for_file: must_be_immutable, import_of_legacy_library_into_null_safe

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portafolio/pages/home/components/carousel_items.dart';
import 'package:portafolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Carousel extends StatelessWidget {
  Carousel({Key? key}) : super(key: key);

  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .7 : .85);

    return SizedBox(
      height: carouselContainerHeight,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                height: carouselContainerHeight,
                viewportFraction: 1,
                scrollPhysics: const NeverScrollableScrollPhysics(),
              ),
              items: List.generate(
                carouselItems.length,
                (index) => Builder(
                  builder: (BuildContext context) {
                    return Container(
                      constraints:
                          BoxConstraints(minHeight: carouselContainerHeight),
                      child: ScreenHelper(
                          mobile: _buildMobile(
                              context,
                              carouselItems[index].text,
                              carouselItems[index].image),
                          tablet: _buildTablet(
                              context,
                              carouselItems[index].text,
                              carouselItems[index].image),
                          desktop: _buildDesktop(
                              context,
                              carouselItems[index].text,
                              carouselItems[index].image)),
                    );
                  },
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: 1000.0,
      minWidth: 1000.0,
      defaultScale: false,
      child: Row(children: [Expanded(child: text), Expanded(child: image)]),
    ),
  );
}

Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: 760.0,
      minWidth: 760.0,
      defaultScale: false,
      child: Row(children: [Expanded(child: text), Expanded(child: image)]),
    ),
  );
}

Widget _buildMobile(BuildContext context, Widget text, Widget image) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width * 0.8,
    ),
    width: double.infinity,
    child: text,
  );
}
