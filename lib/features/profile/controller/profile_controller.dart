import 'package:datingapp/models/group_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxList<Clubs> clubs = <Clubs>[
    Clubs(
      name: "Language Exchange Club",
      clubImgUrl:
          "https://www.slokatheschoolmanikonda.ac.in/wp-content/uploads/2020/11/Language-club.jpg",
      noOfUser: 70,
    ),
    Clubs(
        name: "Chess Club",
        clubImgUrl:
            "https://www.kellerisd.net/cms/lib/TX02215599/Centricity/Domain/3607/Images/Chess%20Club%20Logo.jpg",
        noOfUser: 60),
    Clubs(
        name: "Theater Society",
        clubImgUrl:
            "https://qph.cf2.quoracdn.net/main-qimg-cc0838cec3fe2c25050abc958142f0ab-lq",
        noOfUser: 45),
    Clubs(
        name: "Coding Club",
        clubImgUrl:
            "https://media.licdn.com/dms/image/D5612AQFrpQ_QkG1GWw/article-inline_image-shrink_400_744/0/1677159340674?e=1714003200&v=beta&t=cWfMrC8KFj_P2k_N2FJ4TP3wF8KqfUPNa7dZnICiCzY",
        noOfUser: 80)
  ].obs;
}
