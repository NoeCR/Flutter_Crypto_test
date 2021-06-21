import 'package:crypto_test/src/common/theme/theme.dart';
import 'package:crypto_test/src/currency/pages/currency_list.dart';
import 'package:crypto_test/src/currency/pages/preferred_currency.dart';
import 'package:crypto_test/src/providers/app.provider.dart';
import 'package:crypto_test/src/providers/navigation.provider.dart';
import 'package:crypto_test/src/widgets/main_navigation.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(appProvider(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationModel = Provider.of<NavigationModel>(context);
    return MaterialApp(
      title: 'Boilerplate App',
      theme: myTheme,
      home: Scaffold(
        body: PageView(
          controller: navigationModel.pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            CurrencyListPage(),
            PreferredCurrencyPage(),
          ],
        ),
        bottomNavigationBar: BuildBottomItems(),
      ),
    );
  }
}
