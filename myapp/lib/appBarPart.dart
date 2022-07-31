import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarF extends StatelessWidget {
  const AppBarF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Home"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Annie Bryant",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Container(
                      transform: Matrix4.rotationZ(100),
                      child: Icon(Icons.notification_add_outlined)),
                ),
                Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                    ))
              ],
            ),
            SizedBox(
              width: 20,
            ),
            ClipOval(
              child: Image.network(
                "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80",
                width: 30,
              ),
            )
          ],
        )
      ],
    );
  }
}
