import 'package:datingapp/constants/global_variable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ProfileButton extends StatelessWidget {
  String title;
  ProfileButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width * .4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Constants.primaryColor),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                title == "Like"
                    ? Icons.favorite_outline_rounded
                    : Icons.cancel_sharp,
                size: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
