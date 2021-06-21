import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/navigation.provider.dart';
import 'navigation.widget.dart';

class BuildBottomItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationModel = Provider.of<NavigationModel>(context);
    return BottomNavigation(
      currentIndex: navigationModel.currentMainPage,
      onTap: (int index) => navigationModel.currentMainPage = index,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.storm_rounded),
          label: 'All Currencies',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.stars_rounded,
          ),
          label: 'Preferred',
        ),
      ],
    );
  }
}
