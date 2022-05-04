import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterPage extends StatefulWidget {
  const TwitterPage({Key? key}) : super(key: key);

  @override
  State<TwitterPage> createState() => _TwitterPageState();
}

class _TwitterPageState extends State<TwitterPage> {
  bool _activateAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      floatingActionButton: FadeInUp(
        child: FloatingActionButton(
          backgroundColor: Colors.pink,
          child: Icon(_activateAnimation ? FontAwesomeIcons.pause : FontAwesomeIcons.play),
          onPressed: () {
            setState(() {
              _activateAnimation = true;
            });
          },
        ),
      ),
      backgroundColor: const Color(0xff1DA1F2),
      body: Center(
        child: ZoomOut(
          animate: _activateAnimation, // No animation play by default
          from: 30,
          duration: const Duration(milliseconds: 800),
          child: const Icon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
