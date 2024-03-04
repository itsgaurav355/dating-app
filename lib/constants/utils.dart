import 'dart:io';

import 'package:datingapp/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:random_avatar/random_avatar.dart';

class Utils {
  static void triggerHapticFeedback() {
    HapticFeedback.mediumImpact();
  }

  static showToaster(String msg,
      {Icon? icon = const Icon(
        Icons.error,
        color: Colors.white,
      )}) {
    Get.closeAllSnackbars();
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: Colors.red.shade400,
        message: msg,
        icon: icon,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  static String getUserId() {
    String userId = PrefHelper().getString(PrefHelper.USER_ID);
    return userId;
  }

  static String getUserName() {
    String userName = PrefHelper().getString(PrefHelper.USER_NAME);
    return userName;
  }

  static String getSelectedCityName() {
    String? cityName = PrefHelper().getString(PrefHelper.SELECTED_CITY);
    return cityName;
  }

  static Widget getUserImage(double? radius, double? height, double? width) {
    if (PrefHelper().getString(PrefHelper.USER_IMAGE) != '') {
      return Material(
          elevation: 2,
          shape: const CircleBorder(),
          child: CircleAvatar(
            radius: radius,
            backgroundImage: FileImage(
              File(
                PrefHelper().getString(PrefHelper.USER_IMAGE),
              ),
            ),
          ));
    }
    return RandomAvatar(Utils.getUserName(), height: height, width: width);
  }
}
