import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../services/colors.dart';
import 'Services_App_Screen/priceOfServent.dart';

int currentIndex = 0;
List<String> names = [    "Eslam Elmahallawy",    "Ahmed Elmahallawy",    "Adam Smith",    "Emily Johnson"  ];
List<String> locations = [    "New York, USA",    "London, UK",    "Paris, France",    "Sydney, Australia"  ];
List<double> prices = [25.0, 30.0, 20.0, 40.0];
List<double> ratings = [4.5, 3.5, 5.0, 4.0];
List<String> images = [    "assets/images/avatar3.png",   "assets/images/avatar4.jpg",   "assets/images/avatar.jpg",
  "assets/images/avatar2.jpg",];

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _bNavBarWithDoctorSpetialistState();
}

class _bNavBarWithDoctorSpetialistState extends State<homeScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.zero) , color:Colors.grey[300],),
      width: double.infinity,child:
            Column(
              children: [
                Image(image: AssetImage("assets/images/logoHome.png") , fit: BoxFit.fill),
                SizedBox(height: 20,),
                Center(child: Text("Love Your Soul  " , style: TextStyle(fontSize: 25.0 ,fontFamily: "cairo",
                  color: mainColor,
                ),)  ),
                SizedBox(height: 2,),
                Text("we pour love and care in every patient. ", textAlign: TextAlign.center,maxLines: 2  , style: TextStyle(fontSize: 35.0 ,
                    fontFamily: "cairo",color:mainColor, fontWeight: FontWeight.bold),),

                Row( crossAxisAlignment: CrossAxisAlignment.end , mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_right_alt , size: 30, color: mainColor),
                    Text("we make you never lose hope. ",
                      style: TextStyle(fontSize: 20.0 ,
                          fontFamily: "cairo",color:mainColor, fontWeight: FontWeight.bold),),
                  ],
                ),

              SizedBox(height: 20,),
              ],
            )),
         SizedBox(height: 30,),
            Text("Top Ordered ",
              style: TextStyle(fontSize: 55.0 ,
                  fontFamily: "cairo",color:Colors.yellow[600], fontWeight: FontWeight.bold),),
SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                      gradient: SweepGradient( center: Alignment.centerLeft,
                          colors: [grayColor! ,mainColor ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)

                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 140,),

                        Row(  crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  currentIndex = currentIndex == 0 ? 3 : currentIndex - 1;
                                });
                              },
                              icon: Icon(Icons.arrow_back_ios, size: 50,color: mainColor)),
                            Spacer(),
                            Center(
                              child: Stack(alignment: AlignmentDirectional.center,
                                children: [
                                  CircleAvatar(backgroundColor: mainColor, radius: 80),
                                  CircleAvatar(backgroundColor: Colors.white, radius: 75),
                                  CircleAvatar(
                                    backgroundImage:AssetImage("${images[currentIndex]}" ), //pictures
                                    radius: 72,  ),
                                ],),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  currentIndex = currentIndex == 3 ? 0 : currentIndex + 1;
                                });
                              },
                              icon: Icon(Icons.arrow_forward_ios, size: 50,color: mainColor,),
                            ),

                          ],
                        ),
                        Column(children: [
                          Text(
                            names[currentIndex],
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,color: mainColor,
                            ),
                          ),
                          SizedBox(height: 7),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                              "  Location :${locations[currentIndex]}",
                                style: TextStyle(fontSize: 18,color: mainColor,fontWeight: FontWeight.bold,),
                              ),
                              SizedBox(width: 5,),
                              Icon(Icons.location_history),

                            ],
                          ),
                          SizedBox(height: 5),

                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Price :${prices[currentIndex]}",
                                style: TextStyle(
                                  fontSize: 18,color: mainColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),                              Icon(Icons.attach_money),

                            ],
                          ),
                          SizedBox(width: 10),
                          Row( mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rate :${ratings[currentIndex]}",
                                style: TextStyle(
                                  fontSize: 18,color: mainColor,
                                  fontWeight: FontWeight.bold,
                                ),

                              ),                                Icon(Icons.star),

                            ],
                          ),
SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50) ,
                                    color: mainColor,),height: 40,width: 150,
                                  child: MaterialButton(onPressed: () {

                                  },
                                    child: Text("show more",
                                      style: TextStyle(color:grayColor ,fontWeight: FontWeight.bold , fontSize: 22),),),
                                ),
Spacer(),
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50) ,
                                    color: mainColor,),height: 40,width: 150,
                                  child: MaterialButton(onPressed: () {Get.to(priceOfServant());},
                                    child:Text("order", style: TextStyle(color:grayColor ,
                                          fontWeight: FontWeight.bold , fontSize: 22),) ),
                                    ),
                                SizedBox(width: 10,),

                              ],
                            ),
                          ),

                        ],),
                      ],
                    ),
                  ),

                ],
              ),
            ),


        SizedBox(height: 40,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.zero) , color:Colors.grey[300],),
      height: 230 ,width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Column(
          children: [
          Text("500+ ", style: TextStyle(fontSize: 30.0 ,
              fontFamily: "cairo",color:mainColor, fontWeight: FontWeight.bold),),
          Text(" patient every day ", style: TextStyle(fontSize: 22.0 ,
              fontFamily: "cairo",color:mainColor, fontWeight: FontWeight.bold),),
            Text("100+ ", style: TextStyle(fontSize: 30.0 ,
              fontFamily: "cairo",color:mainColor, fontWeight: FontWeight.bold),),
          Text(" Experience Nurses ", style: TextStyle(fontSize: 22.0 ,
              fontFamily: "cairo",color:mainColor, fontWeight: FontWeight.bold),),
        ],),   Spacer(),
        Column(
          children: [
          Text("2000+ ", style: TextStyle(fontSize: 30.0 ,
              fontFamily: "cairo",color:mainColor, fontWeight: FontWeight.bold),),
          Text(" Patient Capacity ", style: TextStyle(fontSize: 22.0 ,
              fontFamily: "cairo",color:mainColor, fontWeight: FontWeight.bold),),
            Text("500+ ", style: TextStyle(fontSize: 30.0 ,
              fontFamily: "cairo",color:mainColor, fontWeight: FontWeight.bold),),
          Text(" Years Experience ", style: TextStyle(fontSize: 22.0 ,
              fontFamily: "cairo",color:mainColor, fontWeight: FontWeight.bold),),

        ],),
        ])) ,

            Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.zero) , color:mainColor,),
                height: 200 ,width: double.infinity,
                child:Column(
                  children: [
                    Image(image: AssetImage("assets/images/logoWhite.png"), height: 60 ,color: Colors.grey[300]) ,
                   SizedBox(height: 5,),
                    Text("Our job is to make you comfortable and save your life",style: TextStyle(fontSize: 15.0 ,
                        fontFamily: "cairo",color: Colors.grey[300], fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                            Stack( fit: StackFit.passthrough,
                          children: [
                            CircleAvatar(child:IconButton(onPressed: () {

                            }, icon:Icon(Icons.facebook) ), backgroundColor: Colors.grey[300],),

                          ],
                        ),
                            SizedBox(width: 5,),
                            Stack( fit: StackFit.passthrough,
                          children: [
                            CircleAvatar(
                              backgroundColor: grayColor,
                              child:Image(image: AssetImage("assets/icons/linkedin.png") ,height: 24),
                              radius: 20,  ),    ],
                        ),
                            SizedBox(width: 5,),
                            Stack( fit: StackFit.passthrough,
                              children: [
                                CircleAvatar(
                                  backgroundColor: grayColor,
                                  child:Image(image: AssetImage("assets/icons/whatsapp.png") ,height: 33),
                                  radius: 20,  ),
                              ],
                            ),
                            SizedBox(width: 5,),
                            Stack( fit: StackFit.passthrough,
                          children: [
                            CircleAvatar(child:IconButton(onPressed: () {

                            }, icon:Icon(Icons.email_outlined , color: Colors.red,) ), backgroundColor:grayColor,),

                          ],
                        ),
                            SizedBox(width: 5,),
                            Stack( fit: StackFit.passthrough,
                          children: [
                            CircleAvatar(
                              backgroundColor: grayColor,
                              child:Image(image: AssetImage("assets/icons/github.png") ,height: 25),
                                radius: 20,  ),

                          ],
                        ),
                      ],
                    ),


                  ],
                )),

            SizedBox(height: 40,),
          ],),
      ),

    );
  }
}




