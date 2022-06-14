import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nubank_app_clone/widgets/my_credit_card/creditCardObj.dart';
import '../../../main.dart';

class CreditCardFront extends StatelessWidget {
  const CreditCardFront({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CreditCardObj obj = CreditCardObj();
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: 220,
      decoration: BoxDecoration(
          color: Colors.deepPurple, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 250),
            alignment: Alignment.topLeft,
            child: Image(
              image: AssetImage('assets/images/mastercard.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: GetBuilder<Controller>(builder: (_) {
                return Text(
                  _.name,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
