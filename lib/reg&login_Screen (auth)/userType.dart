import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../BNBar_Screens/all about BNAVBAR screens.dart';
import '../reg&login_Screen (auth)/signInAsNurse.dart';
import '../reg&login_Screen (auth)/signInAsPatient.dart';
import '../services/colors.dart';

File? _image;

class userType extends StatelessWidget {
  const userType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) ,color: mainColor),
          height: 270,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0 ,vertical: 40),
            child: Column(
                children: [
              Text("Choose Your Type Of Users?!" , textAlign: TextAlign.center , style: TextStyle(color: Colors.white ,fontSize: 35 ,fontWeight: FontWeight.bold ),),
SizedBox(height: 40,),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50) ,
                          color: grayColor,),height: 40,width: 150,
                        child: MaterialButton(onPressed: () {
Get.to(SignInAsNurse());
                        },
                          child: Text("Nurse",
                            style: TextStyle(color:mainColor ,fontWeight: FontWeight.bold , fontSize: 23),),),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50) ,
                          color: grayColor,),height: 40,width: 150,
                        child: MaterialButton(onPressed: () {Get.to(SignInAsPatient());},
                            child:Text("Patient", style: TextStyle(color:mainColor ,
                                fontWeight: FontWeight.bold , fontSize: 22),) ),),
                    ],
                  ),
            ]),
          ),
          )

        ],
      ),

    );
  }
}
