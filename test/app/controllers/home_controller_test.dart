

import 'package:currency_conversion/app/controllers/home_controller.dart';
import 'package:currency_conversion/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  

  final homeController = HomeController(toText: toText, fromText: fromText);

  test('Deve converter de real para dólar - aceitar virgula', (){
    toText.text = '2,0';

    homeController.convert();

    expect(fromText.text, '0.38');
  });

  test('Deve converter de real para dólar', (){
    toText.text = '2.0';

    homeController.convert();

    expect(fromText.text, '0.38');
  });

  test('Deve converter de dolar para real', (){
    toText.text = '1.0';
    List<CurrencyModel> currencies = CurrencyModel.getCurrencies();
    homeController.toCurrency = currencies[1];
    homeController.fromCurrency = currencies[0];

    homeController.convert();

    expect(fromText.text, '5.21');
  });


}