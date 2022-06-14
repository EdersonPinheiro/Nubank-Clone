import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Color backgroundColor = const Color.fromRGBO(131, 10, 210, 1);
Color secondaryPurple = const Color.fromRGBO(155, 59, 218, 1);
Color greyColor = const Color.fromRGBO(240, 241, 245, 1);

class ActionsPay extends StatelessWidget {
  const ActionsPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _actionItem(
              icon: MdiIcons.clover,
              name: 'ÁreaPix',
              isFirst: true,
            ),
            _actionItem(
              icon: MdiIcons.barcode,
              name: 'Pagar',
            ),
            _actionItem(
              icon: MdiIcons.cash,
              name: 'Transferir',
            ),
            _actionItem(
              icon: MdiIcons.cash,
              name: 'Depositar',
            ),
            _actionItem(
              icon: MdiIcons.creditCard,
              name: 'Recarga',
            ),
            _actionItem(
              icon: MdiIcons.heartOutline,
              name: 'Doação',
            ),
          ],
        ),
      ),
    );
  }

  _actionItem({required IconData icon, required String name, bool? isFirst}) {
    var greyColor2 = greyColor;
    return Container(
        padding: isFirst != null && isFirst
            ? const EdgeInsets.only(left: 20, right: 7)
            : const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: greyColor2, borderRadius: BorderRadius.circular(48)),
              child: Icon(icon),
            ),
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
