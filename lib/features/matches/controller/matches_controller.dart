import 'package:datingapp/models/user_model.dart';
import 'package:get/get.dart';

class MatchesController extends GetxController {
  RxList<User> user = [
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
  RxList<bool> status = RxList.filled(50, false);

  changeStatus(index) {
    status[index] = !status[index];
  }
}
