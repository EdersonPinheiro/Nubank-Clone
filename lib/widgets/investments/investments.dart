import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../pages/home_page.dart';

class Investments extends StatelessWidget {
  const Investments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _investmentsText(),
          const SizedBox(height: 15),
          _loanValue(),
          _consult(),
        ],
      ),
    );
  }

  _investmentsText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Investimentos',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _loanValue() {
    return Row(
      children: [
        const Text(
          'O jeito Nu de investir: sem asteriscos, \n linguagem fácil a partir de R\$1. Saiba mais.',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  _consult() {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Icon(MdiIcons.cash),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Consultar saldo para transferência',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
