import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nubank_app_clone/pages/home_page.dart';
import 'package:nubank_app_clone/widgets/my_credit_card/animation/card_widget.dart';
import 'package:nubank_app_clone/widgets/my_credit_card/creditCardObj.dart';

import '../main.dart';

class CreditCardVirtual extends StatefulWidget {
  const CreditCardVirtual({Key? key}) : super(key: key);

  @override
  State<CreditCardVirtual> createState() => _CreditCardVirtualState();
}

class _CreditCardVirtualState extends State<CreditCardVirtual> {
  //final _valor = TextEditingController();
  bool nomeCardValidate = false;
  CreditCardObj obj = CreditCardObj();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.height * 0.5,
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width * .9,
              height: 220,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 250),
                    alignment: Alignment.topLeft,
                    child: Image(
                      image: AssetImage('assets/images/mastercard.png'),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: GetBuilder<Controller>(
                          init: Controller(),
                          builder: (_) {
                            return Text(
                              _.valor.text,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.only(left: 0),
              child: Text(
                "Como você quer chamar esse cartão?",
                style: TextStyle(color: greyT, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: Form(
                child: GetBuilder<Controller>(
                    init: Controller(),
                    builder: (_) {
                      return TextFormField(
                        controller: _.valor,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            errorText: nomeCardValidate
                                ? 'Insira o nome do cartão'
                                : null),
                        onChanged: (value) {
                          setState(() {});
                        },
                      );
                    }),
              ),
            ),
            SizedBox(height: 20),
            GetBuilder<Controller>(
                init: Controller(),
                builder: (_) {
                  return FloatingActionButton(
                    onPressed: () {
                      _.showName();
                      validateTextField(_.valor.text);
                    },
                    child: Icon(Icons.arrow_forward),
                  );
                })
          ],
        ),
      ),
    );
  }

  bool validateTextField(String userInput) {
    if (userInput.isEmpty) {
      setState(() {
        nomeCardValidate = true;
      });
      return false;
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => CardWidget()));
    }
    setState(() {
      nomeCardValidate = false;
    });
    return true;
  }
}
