import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../pages/home_page.dart';

class SecurityLife extends StatelessWidget {
  const SecurityLife({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _securityTitle(),
          SizedBox(height: 15),
          _securitySubTitle(),
          _securityButton(),
        ],
      ),
    );
  }
}

//Icon(MdiIcons.heartOutline),

_securityTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        child: Text(
          'Seguros',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}

_securitySubTitle() {
  return Column(
    children: [
      Text(
        'Proteção para você cuidar do que importa',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    ],
  );
}

_securityButton() {
  return Container(
    margin: const EdgeInsets.only(
      top: 10,
      bottom: 10,
    ),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: greyColor, borderRadius: BorderRadius.circular(15)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        iconTitle(),
        Text(
          'Conhecer',
          style: TextStyle(color: backgroundColor, fontWeight: FontWeight.bold),
        )
      ],
    ),
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
        Icon(MdiIcons.heartOutline),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Seguro vida',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
