import 'package:datingapp/features/matches/widgets/user_tile.dart';
import 'package:datingapp/features/matches/controller/matches_controller.dart';
import 'package:datingapp/features/profile/screen/general_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({super.key});

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  final MatchesController _controller = MatchesController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Matches",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: _controller.user.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(GeneralProfile(user: _controller.user[index]));
              },
              child: UserTile(
                user: _controller.user[index],
                index: index,
              ),
            );
          },
        ),
      ),
    );
  }
}
