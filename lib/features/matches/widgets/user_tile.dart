import 'package:datingapp/common/widgets/button.dart';
import 'package:datingapp/features/matches/controller/matches_controller.dart';
import 'package:datingapp/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class UserTile extends StatelessWidget {
  User user;
  int index;
  UserTile({super.key, required this.user, required this.index});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MatchesController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3),
      child: Card(
        surfaceTintColor: Colors.white,
        elevation: 2,
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(user.imgUrl),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    user.name,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ]),
                Obx(
                  () => !controller.status[index]
                      ? MyButton(
                          action: () {
                            controller.changeStatus(index);
                          },
                          title: "Like",
                        )
                      : MyButton(
                          action: () {
                            controller.changeStatus(index);
                          },
                          title: "Unlike",
                        ),
                ),
              ],
            )),
      ),
    );
  }
}
