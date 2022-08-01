import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/appBarPart.dart';

import 'package:myapp/buttonPart.dart';
import 'package:myapp/containerPart.dart';
import 'package:myapp/jobContainer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(flex: 2, child: Container()),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(0.26),
                  )),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                AppBarF(),
                ContainerPart(),
                ButtonPart(),
                SizedBox(
                  height: 20,
                ),
                JobContainer()
              ],
            ),
          )
        ],
      ),
    );
  }
}
