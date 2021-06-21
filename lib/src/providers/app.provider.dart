import 'package:crypto_test/src/providers/currency.provider.dart';
import 'package:crypto_test/src/providers/navigation.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget appProvider({required Widget child}) {
  return MultiProvider(
    child: child,
    providers: [
      ChangeNotifierProvider<NavigationModel>(create: (_) => NavigationModel()),
      ChangeNotifierProvider<CurrencyModel>(create: (_) => CurrencyModel()),
    ],
  );
}
