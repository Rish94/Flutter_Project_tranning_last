import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application/Screens/UserScreen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Get Started"),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(50, 200, 50, 50),
          child: Column(children: [
            Text(
              "TRANING",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 80,
            ),
            Image(
                image: NetworkImage(
                    "https://www.aihr.com/wp-content/uploads/learning-vs-training-cover.png")),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return UserLogin();
                  }));
                },
                child: Text("Get Started"))
          ]),
        ));
  }
}
