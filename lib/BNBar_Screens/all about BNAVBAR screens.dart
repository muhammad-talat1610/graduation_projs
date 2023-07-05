
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:graduation_project/reg&login_Screen%20(auth)/signUpAsNusre.dart';
import '../providers_Folder/controller.dart';
import '../reg&login_Screen (auth)/userType.dart';
import 'settings.dart';
import 'Services_App_Screen/serviceScreen.dart';
import 'doctorDetailsOfProfile.dart';
import 'homeScreen.dart';
import '../services/colors.dart';


List screens = [
  homeScreen(),
  serviceScreen(),
  doctorDetailsOfProfile(),
  settingsDetailsScreen(),
];
final bool isRegistered = false;
File? _image;


class BNAVBAR extends StatelessWidget {

  getxController controller = Get.put(getxController());

  Widget build(BuildContext context) {
    return GetBuilder<getxController>(builder: (controller) {
      return Scaffold(
        extendBody: true,
        appBar: PreferredSize(
          child: AppBar(
            backgroundColor: mainColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage("assets/images/logoWhite.png"),
                  height: 60,
                  color: Colors.grey[300],
                ),
                Spacer(),

                if (isRegistered == false)
                  Stack( fit: StackFit.passthrough,
                    children: [
                      CircleAvatar(child:IconButton(onPressed: () {
                        Get.to(userType());
                      }, icon:Icon(Icons.login_sharp) ),
                        backgroundColor: Colors.grey[300],) ,

                    ],
                  ),
                if (isRegistered && _image != null)
                  CircleAvatar(
                    backgroundImage: FileImage(_image!),
                  ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(70),
        ),


        // appBar:

       body: screens[controller.selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

            backgroundColor: mainColor,
            selectedItemColor: Colors.black,
             unselectedItemColor: grayColor,
            // unselectedLabelStyle: TextStyle(color:grayColor),
            // showUnselectedLabels: true,
             unselectedIconTheme: IconThemeData(color: grayColor ,opacity: 1 ,),
             selectedIconTheme: IconThemeData(color: Colors.black,),
             currentIndex: controller.selectedIndex,
            onTap: controller.onItemTapped,

            items: [

              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 35 , color: grayColor,), label: 'home'.tr),
              BottomNavigationBarItem(
                  icon: Icon(Icons.medical_services, size: 33 ,color: grayColor,), label: 'Services'.tr),
              BottomNavigationBarItem(
                 icon: Icon(Icons.flash_on, size: 33, color: grayColor,), label: 'personal Page'.tr),
              BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_circle_down_rounded, size: 33, color: grayColor,), label: 'About'.tr),

            ] ,),
      );
    });
  }
}



