import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/model/usermodel.dart';

class JobDetails extends StatefulWidget {
  JobDetails({Key? key, this.model, required this.userModel}) : super(key: key);
  UserModel userModel;
  final UserModel? model;

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "${widget.model!.logoUrl}",
                      height: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("${widget.model!.company}")
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
            Text("${widget.model!.title}"),
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
                    Text("${widget.model!.location}")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      color: Colors.yellow,
                    ),
                    Text("${widget.model!.time}")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Requirments:"),
          ],
        ),
      ),
    );
  }
}
