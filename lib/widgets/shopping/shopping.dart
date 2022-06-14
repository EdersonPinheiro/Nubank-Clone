import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Shopping extends StatelessWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _shoppingTitle(),
          const SizedBox(
            height: 15,
          ),
          _shoppingSubTitle(),
        ],
      ),
    );
  }
}

_shoppingTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        'Shopping',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      Icon(MdiIcons.chevronRight),
    ],
  );
}

_shoppingSubTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Text(
        'Vantagens exclusivas das nossas marcas \n preferidas',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    ],
  );
}
