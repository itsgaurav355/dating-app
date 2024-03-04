import 'package:datingapp/models/group_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClubTile extends StatelessWidget {
  Clubs club;
  int index;
  ClubTile({super.key, required this.club, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(club.clubImgUrl),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    club.name,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "No. of participants : ${club.noOfUser}+",
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
