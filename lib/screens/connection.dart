import 'package:farm/utils/constant.dart';
import 'package:farm/widgets/body/BodyConnection.dart';
import 'package:farm/widgets/main/customAppBar.dart';
import 'package:farm/widgets/main/menu_side.dart';
import 'package:flutter/material.dart';

class Connection extends StatelessWidget {
  const Connection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gray,
      // appBar: MyAppBar(context),
      // endDrawer: menuSide(context),
      body: Bodyconnection(),
    );
  }
}
