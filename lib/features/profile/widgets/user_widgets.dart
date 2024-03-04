import 'dart:io';

import 'package:datingapp/constants/global_variable.dart';
import 'package:datingapp/constants/utils.dart';
import 'package:datingapp/helper/helper.dart';
import 'package:datingapp/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserCard extends StatefulWidget {
  final User user;
  const UserCard({super.key, required this.user});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  late File _image;
  @override
  void initState() {
    super.initState();
  }

  Future<void> _updateImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      PrefHelper().setString(PrefHelper.USER_IMAGE, _image.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Utils.getUserImage(60, 120, 120)),
        Positioned(
          bottom: 5,
          right: 18,
          child: IconButton(
              iconSize: 35,
              icon: const Icon(Icons.edit, color: Constants.primaryColor),
              onPressed: _updateImage),
        ),
      ],
    );
  }
}
