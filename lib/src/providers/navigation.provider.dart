import 'package:flutter/widgets.dart';

class NavigationModel extends ChangeNotifier {
  int _currentMainPage = 0;
  PageController _pageController = PageController();

  int get currentMainPage => this._currentMainPage;
  PageController get pageController => this._pageController;

  set currentMainPage(int index) {
    this._currentMainPage = index;

    _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeOut);

    notifyListeners();
  }
}
