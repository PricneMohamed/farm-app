import 'package:farm/utils/constant.dart';
import 'package:farm/widgets/details/details_body.dart';
import 'package:farm/widgets/main/customAppBar.dart';
import 'package:farm/widgets/main/menu_side.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  static const DetailsScreenRoute = '/details';

  @override
  Widget build(BuildContext context) {
    final detailsScreenRouting =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    print("detailsScreenRouting => $detailsScreenRouting");

    return Scaffold(
      backgroundColor: gray,
      appBar: MyAppBar(context),
      endDrawer: menuSide(context),
      body: DetailsBody(myFarm: detailsScreenRouting),
    );
  }
}
