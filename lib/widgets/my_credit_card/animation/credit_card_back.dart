import 'package:flutter/material.dart';

class CreditCardBack extends StatelessWidget {
  const CreditCardBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: 220,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.deepPurple),
      child: LayoutBuilder(builder: (_, constraints) {
        return Column(
          children: [
            Row(
              children: [
                Container(
                  width: constraints.maxWidth,
                  height: 60,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  child: Text(
                    '5365 2482 2147 3657',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Valido até \n 12/22',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                Text(
                  '365',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
