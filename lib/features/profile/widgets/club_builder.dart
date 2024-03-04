import 'package:datingapp/constants/global_variable.dart';
import 'package:datingapp/features/profile/controller/profile_controller.dart';
import 'package:datingapp/features/profile/widgets/club_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClubBuilder extends StatelessWidget {
  const ClubBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController mycontroller = Get.put(ProfileController());
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: .5),
          borderRadius: BorderRadius.circular(10),
          color: Constants.primaryColor),
      height: MediaQuery.of(context).size.height * .3,
      alignment: Alignment.topCenter,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: mycontroller.clubs.length,
          itemBuilder: (context, index) {
            return ClubTile(club: mycontroller.clubs[index], index: index);
          }),
    );
  }
}
