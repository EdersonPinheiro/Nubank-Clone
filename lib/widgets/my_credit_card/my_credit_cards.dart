import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../pages/my_cards.dart';
import 'animation/card_widget.dart';

Color backgroundColor = const Color.fromRGBO(131, 10, 210, 1);
Color secondaryPurple = const Color.fromRGBO(155, 59, 218, 1);
Color greyColor = const Color.fromRGBO(240, 241, 245, 1);

class MyCreditCards extends StatelessWidget {
  const MyCreditCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MyCards()));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 0, top: 10, bottom: 10, right: 20),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: greyColor, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            const Icon(MdiIcons.creditCard),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                'Meus cartões',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
