import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio/models/header_item.dart';
import 'package:portafolio/utils/constants.dart';

List<HeaderItem> headerItems = [
  HeaderItem(title: "HOME", onTap: () {}),
  HeaderItem(title: "INTRO", onTap: () {}),
  HeaderItem(title: "SERVICES", onTap: () {}),
  HeaderItem(title: "PORTAFOLIO", onTap: () {}),
  HeaderItem(title: "CONTACT ME", onTap: () {}, isButton: true),
];

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "PORTAFOLIO",
              style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: ".",
              style: GoogleFonts.oswald(
                  color: kPrimaryColor,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold)),
        ])),
      ),
    ));
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            HeaderLogo(),
          ],
        ));
  }
}
