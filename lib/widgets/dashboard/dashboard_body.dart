import 'package:farm/screens/details_screen.dart';
import 'package:farm/servise/data_sending.dart';
import 'package:farm/utils/data_farm.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}


class _DashboardBodyState extends State<DashboardBody> {
  @override
  Widget build(BuildContext context) {
    final keys = myFarm.keys.toList();
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: myFarm.length,
            itemBuilder: (context, index) {
              final String currentKey = keys[index];
              final currentItem = myFarm[currentKey]!;

              return Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: currentItem['color'],
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    sendDataToESP32(currentItem["state"].toString());
                    Fluttertoast.showToast(
                      msg: currentItem["toast"],
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: currentItem["color"],
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                    Navigator.of(context).pushNamed(
                      DetailsScreen.DetailsScreenRoute,
                      arguments: currentItem,
                    );
                  },
                  child: Text(
                    currentItem['name'],
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
