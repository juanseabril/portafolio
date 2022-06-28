// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio/models/carousel_item.dart';
import 'package:portafolio/utils/constants.dart';

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "FULLSTACK DEVELOPER",
          style: GoogleFonts.oswald(
            color: kPrimaryColor,
            fontWeight: FontWeight.w900,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(
          height: 18.0,
        ),
        Text(
          "JUANSE\nABRIL",
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontSize: 40.0,
            fontWeight: FontWeight.w900,
            height: 1.3,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          "Machine Learning developer, located in Bogotá",
          style: TextStyle(color: kCaptionColor, fontSize: 15.0, height: 1.0),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Wrap(
          children: [
            const Text(
              "Have a project that implements machine learning?",
              style:
                  TextStyle(color: kCaptionColor, fontSize: 15.0, height: 1.5),
            ),
            GestureDetector(
              onTap: () {},
              child: const MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  " Let's talk.",
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 48.0,
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "LET US BEGIN",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    ),
    image: Image.asset("assets/personWithRobot.png", fit: BoxFit.contain),
  ),
);
