import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContainerPart extends StatelessWidget {
  const ContainerPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 450,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
              image: AssetImage("assets/images/search_bg.png"),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "First Search",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Text('You can search Quickly For \n the jb you want',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 20),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
