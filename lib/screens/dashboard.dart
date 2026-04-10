import 'package:farm/utils/constant.dart';
import 'package:farm/widgets/dashboard/dashboard_body.dart';
import 'package:farm/widgets/main/customAppBar.dart';
import 'package:farm/widgets/main/menu_side.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  static const DashBoardRoute = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gray,
      appBar: MyAppBar(context),
      endDrawer: menuSide(context),
      body: DashboardBody(),
    );
  }
}
