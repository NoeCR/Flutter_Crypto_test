import 'package:crypto_test/src/common/config/constants.config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CurrencyService {
  getCurrencyPrices() async {
    print('Loading Currencies');
    final url = '${CurrencyConstants.URL_KRAKEN}/0/public/Ticker?pair=${CurrencyConstants.PAIRS.join(',')}';

    return await http.get(Uri.parse(url));
  }
}
