import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainLogo extends StatelessWidget {
  MainLogo({Key? key, this.height = 50, this.width = 50}) : super(key: key);
  double? height;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 5,
                height: 5,
                color: Colors.black,
              ),
              Container(
                width: 5,
                height: 5,
                color: Colors.black,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 5,
                height: 5,
                color: Colors.black,
              ),
              Container(
                width: 5,
                height: 5,
                color: Colors.black,
              )
            ],
          ),
        ],
      )),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              offset: Offset(0, 2),
              color: Colors.grey.withOpacity(0.2),
            )
          ]),
    );
  }
}
