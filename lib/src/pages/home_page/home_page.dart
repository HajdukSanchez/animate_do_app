import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            FadeIn(duration: const Duration(milliseconds: 2000), child: const Text("Animate Do")),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.twitter)),
          SlideInLeft(
            from: 100,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (BuildContext context) => const HomePage()));
                },
                icon: const Icon(Icons.navigate_next_rounded)),
          ),
        ],
      ),
      floatingActionButton: ElasticInRight(
          child: FloatingActionButton(onPressed: () {}, child: const Icon(FontAwesomeIcons.play))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElasticIn(
              delay: const Duration(milliseconds: 1500),
              child: const Icon(
                Icons.new_releases_rounded,
                size: 40,
                color: Colors.blue,
              ),
            ),
            FadeInDown(
                delay: const Duration(milliseconds: 200),
                child: const Text("Title",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200))),
            FadeInDown(
                delay: const Duration(milliseconds: 800),
                child: const Text("SubTitle",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400))),
            FadeInLeft(
              delay: const Duration(milliseconds: 1100),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                width: 220,
                height: 2,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
