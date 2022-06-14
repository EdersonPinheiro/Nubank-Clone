import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../main.dart';
import '../account/account.dart';

Account account = Account();
Color backgroundColor = const Color.fromRGBO(131, 10, 210, 1);
Color secondaryPurple = const Color.fromRGBO(155, 59, 218, 1);
Color greyColor = const Color.fromRGBO(240, 241, 245, 1);

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool _eyesValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_profile(), _options()],
          ),
          SizedBox(
            height: 40,
          ),
          _welcome()
        ],
      ),
    );
  }

  _profile() {
    return InkWell(
      child: Container(
          margin: const EdgeInsets.only(left: 20, top: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80), color: secondaryPurple),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  MdiIcons.accountOutline,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {});
                },
              ),
            ],
          )),
    );
  }

  _options() {
    return Row(
      children: <Widget>[
        GetBuilder<Controller>(
          init: Controller(),
          builder: (_) {
            return GestureDetector(
              onTap: () => _.showValuE(),
              child: Icon(
                _.eyesValue == true ? MdiIcons.eyeOutline : MdiIcons.eyeOff,
                color: Colors.white,
              ),
            );
          },
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            MdiIcons.helpCircleOutline,
            color: Colors.white,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              MdiIcons.emailPlus,
              color: Colors.white,
            ))
      ],
    );
  }

  _welcome() {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 20),
      child: const Text(
        'Olá Ederson',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
