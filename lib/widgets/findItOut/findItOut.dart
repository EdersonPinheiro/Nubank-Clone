import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../pages/home_page.dart';

class FindItOut extends StatefulWidget {
  //const FindItOut({Key? key}) : super(key: key);

  @override
  State<FindItOut> createState() => _FindItOutState();
}

class _FindItOutState extends State<FindItOut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.8,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _fintItOut(),
          const SizedBox(height: 15),
          _fintItOutCard(),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

_fintItOut() {
  return Row(
    children: [
      const Text('Descubra mais',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    ],
  );
}

_fintItOutCard() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Cards(
          img: "assets/images/parcele-compras.jpeg",
          title: 'Parcele compras no app',
          subTitle: 'Sua liberdade financeira \n começa com você ...',
          button: 'Conhecer',
        ),
        const SizedBox(width: 20),
        Cards(
          img: "assets/images/portabilidade-de-salario.jpeg",
          title: 'Portabilidade de salário',
          subTitle: 'Sua liberdade financeira \n começa com você ...',
          button: 'Conhecer',
        ),
        const SizedBox(width: 20),
        Cards(
          img: "assets/images/indique-amigos.jpeg",
          title: 'Indique seus amigos',
          subTitle: 'Mostre aos seus amigos \n como é fácil ter uma vida ...',
          button: 'Indicar',
        ),
        const SizedBox(width: 20),
        Cards(
          img: "assets/images/whatsapp-pay.jpeg",
          title: 'WhatsApp',
          subTitle: 'Pagamentos seguros, \n rápidos e sem tarifa. A ...',
          button: 'Conhecer',
        ),
        const SizedBox(width: 20),
        Cards(
          img: "assets/images/promocao.jpeg",
          title: 'Promoção tudo no ...',
          subTitle: 'Faça compras no seu \n cartão de crédito e ...',
          button: 'Participar',
        ),
      ],
    ),
  );
}

class Cards extends StatelessWidget {
  String img;
  String title;
  String subTitle;
  String button;

  Cards(
      {required this.img,
      required this.title,
      required this.subTitle,
      required this.button});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 300,
      color: greyColor,
      child: Column(
        children: [
          Image.asset(
            img,
            fit: BoxFit.cover,
            width: 230,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Text(
            subTitle,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left: 10, right: 116),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.5),
                  child: Text(
                    button,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*

return Container(
    width: 230,
    height: 300,
    color: greyColor,
    child: Column(
      children: [
        Image.asset(
          'assets/images/parcele-compras.jpeg',
          fit: BoxFit.cover,
          width: 230,
        ),
        SizedBox(height: 20),
        const Text(
          'Parcele compras no app',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        const Text(
          'Descontos em compras à\n vista no crédito, controle ...',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 25),
        Container(
          margin: EdgeInsets.only(left: 10, right: 116),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                child: const Text(
                  'Conhecer',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );

*/
