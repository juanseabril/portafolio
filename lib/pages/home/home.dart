import 'package:flutter/material.dart';
import 'package:portafolio/pages/home/components/header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const Header(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
