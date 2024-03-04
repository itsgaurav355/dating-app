import 'package:datingapp/features/profile/widgets/club_builder.dart';
import 'package:datingapp/features/profile/widgets/profile_button.dart';
import 'package:datingapp/models/user_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GeneralProfile extends StatelessWidget {
  User user;
  GeneralProfile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    String userName = user.name;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          userName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 27,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(user.imgUrl),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                surfaceTintColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 45,
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width * .9,
                      child: Text(
                        userName,
                        style: const TextStyle(fontSize: 18),
                      )),
                ),
              ),
              Card(
                surfaceTintColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 45,
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width * .9,
                      child: Text(
                        "${user.name.trim().toLowerCase()}@gmail.com",
                        style: const TextStyle(fontSize: 18),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Joined Clubs",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const ClubBuilder(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: ProfileButton(title: "Like")),
                  Expanded(child: ProfileButton(title: "Reject"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
