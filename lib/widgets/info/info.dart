import 'package:flutter/material.dart';

Color backgroundColor = const Color.fromRGBO(131, 10, 210, 1);
Color secondaryPurple = const Color.fromRGBO(155, 59, 218, 1);
Color greyColor = const Color.fromRGBO(240, 241, 245, 1);

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _loan(),
            _saveMoney(),
            _securityLife(),
            _friendsRecomended()
          ],
        ),
      ),
    );
  }

  _loan() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(15)),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'Seu ',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          TextSpan(
            text: 'informe de \n rendimentos ',
            style: TextStyle(color: backgroundColor, fontSize: 16),
          ),
          TextSpan(
            text: '2021 já está ...',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ]),
      ),
    );
  }

  _saveMoney() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(15)),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'Chegou o',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          TextSpan(
              text: 'débito automático da fatura do ...',
              style: TextStyle(color: backgroundColor, fontSize: 16))
        ]),
      ),
    );
  }

  _securityLife() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(15)),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'Conheça ',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          TextSpan(
            text: 'Nubank Vida ',
            style: TextStyle(color: backgroundColor, fontSize: 16),
          ),
          TextSpan(
              text: 'um seguro simples e que cab...',
              style: TextStyle(color: Colors.black, fontSize: 16))
        ]),
      ),
    );
  }

  _friendsRecomended() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(15)),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Salve seus amigos da burocracia. ',
              style: TextStyle(color: Colors.black, fontSize: 16)),
          TextSpan(
              text: 'Faça um ...',
              style: TextStyle(color: backgroundColor, fontSize: 16))
        ]),
      ),
    );
  }
}
