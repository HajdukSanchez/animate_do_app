import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:animate_do_app/src/models/models.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NotificationModel(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Notifications page"),
        ),
        floatingActionButton: const _FloatingButton(),
        bottomNavigationBar: const _BottomNavigation(),
      ),
    );
  }
}

class _FloatingButton extends StatelessWidget {
  const _FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () => onTapFloaingButton(context),
        child: const Icon(
          FontAwesomeIcons.play,
        ));
  }

  void onTapFloaingButton(
    BuildContext context,
  ) {
    final int oldNumber =
        Provider.of<NotificationModel>(context, listen: false).numberOfNotifications;
    Provider.of<NotificationModel>(context, listen: false).numberOfNotifications = oldNumber + 1;
  }
}

class _BottomNavigation extends StatelessWidget {
  const _BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int numberOfNotifications = Provider.of<NotificationModel>(context).numberOfNotifications;

    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.pink,
      items: [
        const BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.bone), label: "Bones"),
        BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(FontAwesomeIcons.bell),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 12,
                    height: 12,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
                    child: Text(
                      "$numberOfNotifications",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: "Notifications"),
        const BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.dog), label: "My dog"),
      ],
    );
  }
}
