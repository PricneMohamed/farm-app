import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  final Map<String, dynamic> myFarm;
  const DetailsBody({super.key, required this.myFarm});

  @override
  Widget build(BuildContext context) {
    print("myFarm => $myFarm");
    Size size = MediaQuery.of(context).size;
    final List keys = myFarm['sensors'].keys.toList(); 

    print("keys => $keys");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: size.width * 0.8,
            margin: EdgeInsets.all(10),
            child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.asset(myFarm["image"],fit: BoxFit.cover,width: size.width * 0.6,height: 400,)),
          ),
        ),
        SizedBox(height: 30),
        Center(child: Text(myFarm["name"], style: Theme.of(context).textTheme.headlineMedium)),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("معلومات ",textAlign: TextAlign.right, style: Theme.of(context).textTheme.titleLarge),
        ),
        Container(
          child: Expanded(
            child: ListView.builder(
                itemCount: keys.length,
              itemBuilder: (context,index){
                final icon = myFarm['sensors'][keys[index]]['icon'];
                final name = myFarm['sensors'][keys[index]]['name'];
                final value = myFarm['sensors'][keys[index]]['value'];
                return ListTile(
                  textColor: Colors.white,
                  leading: icon,
                  title: Text(name),
                  subtitle: Text(value.toString()),
                );
            }),
          )
        )
      ],
    );
  }
}
