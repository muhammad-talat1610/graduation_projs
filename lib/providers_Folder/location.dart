import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../BNBar_Screens/Services_App_Screen/priceOfServent.dart';
import '../Doctor details.dart';
import '../providers_Folder/controller.dart';
import '../services/colors.dart';

late dynamic index; // Declare index variable of type int

class Location extends StatelessWidget {
  final getxController controller = Get.put(getxController());

  Widget build(BuildContext context) {
    return GetBuilder<getxController>(builder: (controller) {
      return Scaffold(
            body: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Container(
                    height: 140,
                    child: Column( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            myInkwell("All".tr, () {
                              controller.getAll();
                            }),
                            myInkwell("Male".tr, () {
                              controller.getMale();
                            }),
                            myInkwell("Female".tr, () {
                              controller.getFemale();
                            }),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            myInkwell("Location".tr, () {
                              controller.getLoc();
                            }),
                            myInkwell("Price".tr, () {
                              controller.lowestPrice();
                            }),
                            myInkwell("Active".tr, () {
                              controller.getActive();
                            }),
                          ],
                        ),
                       // SizedBox(height: 150,),
                      ],
                    ),
                  ),
                ),  //filters
                Center(
                  child: Container(
                    height: 600,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: controller.data.length,
                      itemBuilder: (context, i) {
                        index = i; // Assign the current index value to index variable
                        return Container(
                          child: detailsOfPersona(context ,
                              controller.data[i]["image"],
                            controller.data[i]["name"],
                            controller.data[i]["adress"],
                            controller.data[i]["price"].toString(),
                            controller.data[i]["rate"].toString(),
                            i ,

                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },

    );
  }

  Widget myInkwell(String text, VoidCallback onTab) {
    return InkWell(
      onTap: () {
        onTab();
      },
      child: Container(
          child: Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.grey[200], fontSize: 20),
              )),
          width: 100.0,
          height: 50,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xff026670),
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}

Widget detailsOfPersona(
    BuildContext context,
    String image,
    String name,
    String location,
    String price,
    String rate,
    int index,
    ) {
  //final personData = controller.data[index]; // Retrieve personData using index
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [

        Container(
          height: 500,
          decoration: BoxDecoration(
            gradient: SweepGradient(
              center: Alignment.centerLeft,
              colors: [grayColor!, mainColor],
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 140,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // IconButton(
                  //   onPressed: () {
                  //     // setState(() {
                  //     //   currentIndex = currentIndex == 0 ? 3 : currentIndex - 1;
                  //     // });
                  //   },

                  //   icon: Icon(Icons.arrow_back_ios, size: 50,color: mainColor)
                  //   ),
                  Spacer(),
                  Center(
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        CircleAvatar(backgroundColor: mainColor, radius: 80),
                        CircleAvatar(backgroundColor: Colors.white, radius: 75),
                        CircleAvatar(
                          backgroundImage: NetworkImage(image), //pictures
                          radius: 72,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  // IconButton(
                  //   onPressed: () {
                  //     // setState(() {
                  //     //   currentIndex = currentIndex == 3 ? 0 : currentIndex + 1;
                  //     // });
                  //   },
                  //   icon: Icon(Icons.arrow_forward_ios, size: 50,color: mainColor,),

                  // ),
                ],
              ),
              Column(
                children: [
                  Text(
                    (name),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                  ),
                  SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Adress :",
                            style: TextStyle(
                              fontSize: 18,
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "$location",
                            style: TextStyle(
                              fontSize: 12,
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.location_history),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Price :$price",
                        style: TextStyle(
                          fontSize: 18,
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.attach_money),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Rate :$rate",
                        style: TextStyle(
                          fontSize: 18,
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.star),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: mainColor,
                          ),
                          height: 40,
                          width: 150,
                          child: MaterialButton(
                            onPressed: () {
                                Get.to(DoctorProfilePage(),
                                    arguments:index
                                );

                              // Navigator.push(
                              //     context, MaterialPageRoute(
                              //     builder: (context) =>
                              //         DoctorProfilePage())
                              // );

                            },
                            child: Text(
                              "show more",
                              style: TextStyle(
                                  color: grayColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: mainColor,
                          ),
                          height: 40,
                          width: 150,
                          child: MaterialButton(
                              onPressed: () {
                                 Get.to(priceOfServant());
                              },
                              child: Text(
                                "order",
                                style: TextStyle(
                                    color: grayColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

