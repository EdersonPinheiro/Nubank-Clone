import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class Controller extends GetxController {
  final valor = TextEditingController();
  bool showValue = false;
  bool showValueCC = false;
  String saldo = 'R\$ 2.630,00';
  String valueCreditCard = 'R\$ 500,00';
  bool eyesValue = true;

  String name = '';

  void showValuE() {
    eyesValue = !eyesValue;
    account.showValue = false;

    showValue = !showValue;
    showValue == false ? saldo = 'R\$ 2.630,00' : saldo = '****';

    showValueCC = !showValueCC;
    showValueCC == false
        ? valueCreditCard = 'R\$ 500,00'
        : valueCreditCard = '****';
    update();
  }

  void showName() {
    name = valor.text;
    update();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nubank',
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const HomePage());
  }
}
