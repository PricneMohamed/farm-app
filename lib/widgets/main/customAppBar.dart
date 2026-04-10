  import 'package:farm/utils/constant.dart';
import 'package:flutter/material.dart';

AppBar MyAppBar(BuildContext context) {
    return AppBar(
      title: Text(app, style: Theme.of(context).textTheme.titleMedium),
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: gray,
    );
  }
