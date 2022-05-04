import 'package:flutter/material.dart';

import 'package:animate_do_app/src/pages/pages.dart';
import 'package:animate_do_app/src/enums/enums.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Routes.homePage.name: (_) => const HomePage(),
  Routes.twitterPage.name: (_) => const TwitterPage(),
};
