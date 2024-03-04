import 'package:datingapp/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBarController extends GetxController {
  final TextEditingController searchBarTextEditingController =
      TextEditingController();
  final RxBool isLoading = false.obs;
  RxList<User>? userList = <User>[
    User(
        imgUrl:
            "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg",
        name: "Nick Leo",
        status: false),
    User(
        imgUrl:
            "https://clipart-library.com/new_gallery/45-455875_black-person-png-business-professional-man-png.png",
        name: "James dsouza",
        status: false),
    User(
        imgUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/033/129/417/small/a-business-man-stands-against-white-background-with-his-arms-crossed-ai-generative-photo.jpg",
        name: "Craig Dsouza",
        status: false),
    User(
        imgUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/033/129/417/small/a-business-man-stands-against-white-background-with-his-arms-crossed-ai-generative-photo.jpg",
        name: "Gaurav Prajapati",
        status: false),
    User(
        imgUrl:
            "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg",
        name: "Elvis yadav",
        status: false),
    User(
        imgUrl:
            "https://clipart-library.com/new_gallery/45-455875_black-person-png-business-professional-man-png.png",
        name: "Poonam Pandey ",
        status: false),
    User(
        imgUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/033/129/417/small/a-business-man-stands-against-white-background-with-his-arms-crossed-ai-generative-photo.jpg",
        name: "Craig Dsouza",
        status: false),
    User(
        imgUrl:
            "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg",
        name: "Nick Leo",
        status: false),
    User(
        imgUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/033/129/417/small/a-business-man-stands-against-white-background-with-his-arms-crossed-ai-generative-photo.jpg",
        name: "Craig Dsouza",
        status: false),
    User(
        imgUrl:
            "https://clipart-library.com/new_gallery/45-455875_black-person-png-business-professional-man-png.png",
        name: "James dsouza",
        status: false),
    User(
        imgUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/033/129/417/small/a-business-man-stands-against-white-background-with-his-arms-crossed-ai-generative-photo.jpg",
        name: "Craig Dsouza",
        status: false),
    User(
        imgUrl:
            "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg",
        name: "Nick Leo",
        status: false),
    User(
        imgUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/033/129/417/small/a-business-man-stands-against-white-background-with-his-arms-crossed-ai-generative-photo.jpg",
        name: "Craig Dsouza",
        status: false),
    User(
        imgUrl:
            "https://clipart-library.com/new_gallery/45-455875_black-person-png-business-professional-man-png.png",
        name: "James dsouza",
        status: false),
    User(
        imgUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/033/129/417/small/a-business-man-stands-against-white-background-with-his-arms-crossed-ai-generative-photo.jpg",
        name: "Craig Dsouza",
        status: false),
    User(
        imgUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/033/129/417/small/a-business-man-stands-against-white-background-with-his-arms-crossed-ai-generative-photo.jpg",
        name: "Craig Dsouza",
        status: false),
    User(
        imgUrl:
            "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg",
        name: "Nick Leo",
        status: false),
    User(
        imgUrl:
            "https://clipart-library.com/new_gallery/45-455875_black-person-png-business-professional-man-png.png",
        name: "James dsouza",
        status: false),
    User(
        imgUrl:
            "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg",
        name: "Nick Leo",
        status: false),
  ].obs;
  RxList<User>? filteredUserList = <User>[].obs;

  void toggleLoading(bool value) {
    isLoading.value = value;
  }
}
