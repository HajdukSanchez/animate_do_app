import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animate Do"),
        actions: [
          IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.twitter)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.navigate_next_rounded)),
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const FaIcon(FontAwesomeIcons.play)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.new_releases_rounded,
              size: 40,
              color: Colors.blue,
            ),
            const Text("Title", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200)),
            const Text("SubTitle", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 220,
              height: 2,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
