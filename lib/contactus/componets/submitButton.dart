import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class ButtonSubmit extends StatelessWidget {
  const ButtonSubmit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: Center(
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              colors: [
                Colors.deepOrange,
                Colors.deepOrange,
                // Colors.green.shade200,
              ],
            ),
            color: Colors.lightGreenAccent[50],
            borderRadius: BorderRadius.circular(5),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              minimumSize: MaterialStateProperty.all(Size(240, 140)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              // elevation: MaterialStateProperty.all(3),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Text(
                "  Submit ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
