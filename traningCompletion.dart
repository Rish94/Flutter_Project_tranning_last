// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TrainingCompletion extends StatelessWidget {
  String? setName;
  DateTime todayDate = DateTime.now();
  TrainingCompletion({Key? key, this.setName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Divider(
              height: 20,
            ),
            SizedBox(
              height: 15,
            ),
            Text("Hi, ${setName}",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Image(
                  image: NetworkImage(
                      "https://www.certificateof.com/wp-content/uploads/2018/08/certificate-of-participation.png")),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "You have successfully completed Hybrid Mobile App Development Course.",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "INSTRUCTOR NAME",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Pankaj Kapoor",
                style: TextStyle(color: Colors.black54, fontSize: 20)),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    "Date:${todayDate.day}-${todayDate.month}-${todayDate.year}",
                    style: TextStyle(fontSize: 20))
              ],
            )
          ],
        ),
      )),
    );
  }
}
