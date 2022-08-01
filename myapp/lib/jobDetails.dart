import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class JobDetails extends StatelessWidget {
  JobDetails({Key? key, this.model}) : super(key: key);
  final model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 3,
                width: 60,
                color: Colors.teal,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "${model!.logoUrl}",
                      height: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("${model!.company}")
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.bookmark_add_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.more_horiz)
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("${model!.title}"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.pin_drop_outlined,
                      color: Colors.yellow,
                    ),
                    Text("${model!.location}")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      color: Colors.yellow,
                    ),
                    Text("${model!.time}")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Requirments:"),
            SizedBox(
              height: 20,
            ),
            ...model.reg
                .map((e) => Container(
                      child: Row(children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: Text(e),
                        )
                      ]),
                    ))
                .toList()
          ],
        ),
      ),
    );
  }
}
