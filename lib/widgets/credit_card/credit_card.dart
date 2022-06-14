import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../main.dart';
import '../../pages/home_page.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _creditCardIcon(),
          _creditCardText(),
          _invoiceText(),
          _invoiceValue(),
          _limitText(),
          _installments(),
        ],
      ),
    );
  }

  _creditCardText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Cartão de crédito',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _creditCardIcon() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: const Icon(MdiIcons.creditCard),
    );
  }

  _invoiceText() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const Text(
        'Fatura atual',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  _invoiceValue() {
    return GetBuilder<Controller>(
        init: Controller(),
        builder: (_) {
          return Text(
            _.valueCreditCard,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          );
        });
  }

  _limitText() {
    return const Text(
      'Limite disponível de R\$ 5.000,00',
      style: TextStyle(color: Colors.grey),
    );
  }

  _installments() {
    return Container(
      margin: const EdgeInsets.only(left: 5, top: 10, bottom: 10, right: 186),
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            child: const Text(
              'Parcelar compras',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
