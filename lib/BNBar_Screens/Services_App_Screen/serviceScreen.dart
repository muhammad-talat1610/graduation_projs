import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import 'package:graduation_project/providers_Folder/location.dart';

import '../nurses.dart';

class serviceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          // Text("  select a service :",style: TextStyle(fontSize: 30),),
          service("assets/images/Pediatric Nursing.jpg",
             "Pediatric Nursing" ,context),
          service(
               "assets/images/Elderly Nursing.jpg", "Elderly Nursing",context),
          service("assets/images/Special Care.jpg","Special Care" ,context),
          service( "assets/images/Woman Nursing.jpg",
              "Emergency Nursing",context),
          service( "assets/images/Woman Nursing.jpg", "Woman Nursing",context),
          service(
              "assets/images/Psychiatric Nursing.jpg","Psychiatric Nursing", context),

         
        ],
      ),
    );
  }

  Widget service(String image, String name, BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    dynamic fontcolor = isDark ? Colors.black : Colors.white;

    return InkWell(
      child: Container(
        width: 100,
        height: 310,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color(0xff026670), borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          Text(name, style: TextStyle(fontSize: 30, color: fontcolor)),
          SizedBox(
            height: 15,
          ),
          Expanded(
              child: Image.asset(
            image,
            fit: BoxFit.fill,
            width: 700,
          ))
        ]),
      ),
      onTap: () {
        Get.to(Location());
      },
    );
  }
}
