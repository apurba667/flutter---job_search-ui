import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonPart extends StatefulWidget {
  const ButtonPart({Key? key}) : super(key: key);

  @override
  State<ButtonPart> createState() => _ButtonPartState();
}

class _ButtonPartState extends State<ButtonPart> {
  var click = 0;
  List _myText = ["All", "Popular", "Features"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
          height: 35,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _myText.length,
            separatorBuilder: ((context, index) => SizedBox(
                  width: 10,
                )),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    click = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2,
                          color: click == index ? Colors.white : Colors.blue),
                      color: click == index ? Colors.teal : Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _myText[index],
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
