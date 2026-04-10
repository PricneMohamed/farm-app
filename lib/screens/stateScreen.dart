import 'package:farm/utils/constant.dart';
import 'package:farm/widgets/main/customAppBar.dart';
import 'package:farm/widgets/main/menu_side.dart';
import 'package:farm/widgets/state/state_body.dart';
import 'package:flutter/material.dart';

class Statescreen extends StatelessWidget {
  const Statescreen({super.key});

  @override
  static const StatescreenRoute = '/state';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gray,
      appBar: MyAppBar(context),
      endDrawer: menuSide(context),
      body: StateBody(),
    );
  }
}
