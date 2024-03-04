import 'package:datingapp/constants/global_variable.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  VoidCallback action;
  String title;
  MyButton({super.key, required this.action, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          action();
        },
        child: Container(
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Constants.primaryColor),
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
