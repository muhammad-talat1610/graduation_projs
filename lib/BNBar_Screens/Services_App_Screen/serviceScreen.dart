import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:graduation_project/providers_Folder/location.dart';
import 'package:get/get.dart';


class serviceScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return
        Scaffold(
           body: ListView(
            children: [
              SizedBox(height: 30,),
              // Text("  select a service :",style: TextStyle(fontSize: 30),),
              InkWell(
                child: Container(width: 100,height: 310,margin:EdgeInsets.all(20),decoration: BoxDecoration(color: Color(0xff026670),borderRadius: BorderRadius.circular(10)),child:
                  Column(children: [SizedBox(height: 15,),
                  Text(""
                        "Pediatric Nursing".tr,style: TextStyle(fontSize: 30,color: Colors.white),),
                    SizedBox(height: 15,) ,
                    Expanded(child:  Image.asset("assets/images/Pediatric Nursing.jpg",
                      fit:BoxFit.fill,width: 700,))
                  ]),),
                onTap: (){ Get.to(Location());

                },
              ),
              /////////////
              InkWell(
                child: Container(width: 100,height: 310,margin:EdgeInsets.all(20),decoration: BoxDecoration(color: Color(0xff026670),borderRadius: BorderRadius.circular(10)),child:
                Column(children: [SizedBox(height: 15,),
                  Text(""
                      "Elderly Nursing".tr,style: TextStyle(fontSize: 30,color: Colors.white),),
                  SizedBox(height: 15,) ,
                  Expanded(child:Image.asset("assets/images/Elderly Nursing.jpg",
                    fit:BoxFit.fill,width: 700,))

                ])


                  ,),
              ),
              //////////////////
              InkWell(
                child: Container(width: 100,height: 310,margin:EdgeInsets.all(20),decoration: BoxDecoration(color:  Color(0xff026670),borderRadius: BorderRadius.circular(10)),child:
                Column(children: [SizedBox(height: 15,),
                  Text(""
                      "Special Care".tr,style: TextStyle(fontSize: 30,color: Colors.white),),SizedBox(height: 15,) ,
                  Expanded(child:Image.asset("assets/images/Special Care.jpg",fit:BoxFit.fill,width: 700,))

                ])


                  ,),
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                          Location()));
                },
              ),
              //////////////////
              InkWell(
                child: Container(width: 100,height: 310,margin:EdgeInsets.all(20),decoration: BoxDecoration(color:  Color(0xff026670),borderRadius: BorderRadius.circular(10)),child:
                Column(children: [SizedBox(height: 15,),
                  Text(""
                      "Emergency Nursing".tr,style: TextStyle(fontSize: 30,color: Colors.white),),SizedBox(height: 15,) ,
                  Expanded(child: Image.asset("assets/images/Emergency Nursing.jpg",fit:BoxFit.fill,width: 700,))


                ])


                  ,),
              ),
              //////////
              InkWell(
                child: Container(width: 100,height: 310,margin:EdgeInsets.all(20),decoration: BoxDecoration(color: Color(0xff026670),borderRadius: BorderRadius.circular(10)),child:
                Column(children: [SizedBox(height: 15,),
                  Text(""
                      "Woman Nursing".tr,style: TextStyle(fontSize: 30,color: Colors.white),),SizedBox(height: 15,) ,
                  Expanded(child:Image.asset("assets/images/Woman Nursing.jpg",fit:BoxFit.fill,width: 700,) )

                ])


                  ,),
              ),
              //////////
              InkWell(
                child: Container(width: 100,height: 310,margin:EdgeInsets.all(20),decoration: BoxDecoration(color: Color(0xff026670),borderRadius: BorderRadius.circular(10)),child:
                Column(children: [SizedBox(height: 15,),
                  Text(""
                      "Psychiatric Nursing".tr,style: TextStyle(fontSize: 30,color: Colors.white),),SizedBox(height: 15,) ,
                  Expanded(child: Image.asset("assets/images/Psychiatric Nursing.jpg",fit:BoxFit.fill,width: 700,)) ,
                ])


                  ,),
              )
              
            ],
          ),






        );

  }




}
