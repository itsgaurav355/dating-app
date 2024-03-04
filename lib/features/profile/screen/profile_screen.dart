import 'package:datingapp/features/profile/widgets/club_builder.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = "Gaurav Prajapati";
    String email = "prajapatigaurav355@student.sfit.ac.in";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
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
              const CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg"),
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
                        email,
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
              const ClubBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
