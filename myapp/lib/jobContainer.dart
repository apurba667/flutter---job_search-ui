import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/jobDetails.dart';
import 'package:myapp/model/usermodel.dart';

class JobContainer extends StatefulWidget {
  const JobContainer({Key? key}) : super(key: key);

  @override
  State<JobContainer> createState() => _JobContainerState();
}

class _JobContainerState extends State<JobContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => showBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => JobDetails(
                        model: myList[index],
                      )),
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.teal),
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
                                    "${myList[index].logoUrl}",
                                    height: 30,
                                  ),
                                  Text("${myList[index].company}")
                                ],
                              ),
                              Icon(Icons.bookmark_add_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("${myList[index].title}"),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.pin_drop_outlined,
                                color: Colors.yellow,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("${myList[index].location}")
                            ],
                          )
                        ],
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
