import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../main.dart';

class Account extends StatelessWidget {
  bool showValue = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_accountText(), _money()],
      ),
    );
  }

  _accountText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Conta',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _money() {
    return GetBuilder<Controller>(
        init: Controller(),
        builder: (_) {
          return Text(
            _.saldo,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          );
        });
  }
}
