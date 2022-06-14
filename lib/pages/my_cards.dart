import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_app_clone/pages/credit_card_virtual.dart';

import 'home_page.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          width: MediaQuery.of(context).size.height * 0.8,
          margin: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 160),
                child: const Text(
                  ' Meus cartões',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 80),
              const newCard(),
              _fisicCard(),
            ],
          ),
        ));
  }
}

class newCard extends StatelessWidget {
  const newCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: greyColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/cardNubank.png',
              height: 185,
            ),
            const SizedBox(height: 20),
            const Text(
              'Crie seu cartão virtual',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Faça assinaturas e compras online \n de forma rápida e segura.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CreditCardVirtual()));
                },
                child: Text('Criar Virtual')),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

_fisicCard() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(right: 260, top: 50),
        child: const Text(
          'Cartão físico',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconTitle(),
          const Icon(MdiIcons.chevronRight),
        ],
      ),
    ],
  );
}

class iconTitle extends StatelessWidget {
  const iconTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(MdiIcons.creditCard),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Ederson S. Pinheiro',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
