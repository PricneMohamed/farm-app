import 'package:farm/utils/constant.dart';
import 'package:farm/utils/routes.dart';
import 'package:flutter/material.dart';

Drawer menuSide(BuildContext context) => Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      UserAccountsDrawerHeader(
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage("images/profile.jpg"),
        ),
        decoration: BoxDecoration(color: gray),
        accountName: Text(
          "G7",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        accountEmail: Text(
          "G7@example.com",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      ...routes.entries.map((route) {
        return ListTile(
          onTap: () {
            Navigator.of(context).pushNamed(route.value['route']);
          },
          title: Text(route.value['name']),
          leading: route.value['icon'],
        );
      }),
    ],
  ),
);
