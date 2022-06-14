import 'package:flutter/material.dart';
import '../widgets/account/account.dart';
import '../widgets/actions_pay/actions.dart';
import '../widgets/appbar/header.dart';
import '../widgets/credit_card/credit_card.dart';
import '../widgets/findItOut/findItOut.dart';
import '../widgets/info/info.dart';
import '../widgets/investments/investments.dart';
import '../widgets/my_credit_card/my_credit_cards.dart';
import '../widgets/security_life/security_life.dart';
import '../widgets/shopping/shopping.dart';
import '../widgets/update/update.dart';

Header header = Header();
Account account = Account();
ActionsPay actions = const ActionsPay();
MyCreditCards myCreditCards = const MyCreditCards();
CreditCard creditCard = const CreditCard();
Investments investments = const Investments();
SecurityLife securityLife = SecurityLife();
Shopping shopping = Shopping();
FindItOut findItOut = FindItOut();
Info info = const Info();
Color backgroundColor = const Color.fromRGBO(131, 10, 210, 1);
Color secondaryPurple = const Color.fromRGBO(155, 59, 218, 1);
Color greyColor = const Color.fromRGBO(240, 241, 245, 1);
Color greyT = Color.fromARGB(255, 63, 63, 63);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: //RefreshIndicator(

          //onRefresh: () async => await update.update(),
          SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header,
              account,
              actions,
              myCreditCards,
              info,
              _divider(),
              creditCard,
              _divider(),
              investments,
              _divider(),
              securityLife,
              _divider(),
              shopping,
              _divider(),
              findItOut,
            ],
          ),
        ),
      ),
      //),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
      ),
    );
  }

  _divider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: const Divider(
        thickness: 1.5,
      ),
    );
  }
}
