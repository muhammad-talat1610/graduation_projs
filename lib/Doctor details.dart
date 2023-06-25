

import 'package:flutter/material.dart';

import 'services/colors.dart';

class DoctorProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: detailsOfPersona(context,
    'https://via.placeholder.com/150', "Bale", "London", "45","5",
    "CR7 IS THE REAL G.O.A.T"),

    );
  }

  Widget detailsOfPersona(
    BuildContext context,
    String image,
    String name,
    String location,
    String price,
    String rate,
    String nurseDetails,
  ) {
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
                    Spacer(),
                    Center(
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          CircleAvatar(backgroundColor: mainColor, radius: 80),
                          CircleAvatar(
                              backgroundColor: Colors.white, radius: 75),
                          CircleAvatar(
                            backgroundImage: NetworkImage(image), //pictures
                            radius: 72,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
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
                              "Address :",
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
                          Spacer(),
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
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    nurseDetails,
                    style: TextStyle(
                      fontSize: 18,
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User Comments',
                        style: TextStyle(
                          fontSize: 18,
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://via.placeholder.com/150'),
                            radius: 25,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'User Name',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: mainColor,
                                  ),
                                ),
                                Text(
                                  'User Comment',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: mainColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber),
                                    SizedBox(width: 5),
                                    Text(
                                      'User Rating',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: mainColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://via.placeholder.com/150'),
                            radius: 25,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'User Name',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: mainColor,
                                  ),
                                ),
                                Text(
                                  'User Comment',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: mainColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber),
                                    SizedBox(width: 5),
                                    Text(
                                      'User Rating',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: mainColor,
                                      ),
                                    ),
                                  ],
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
          ),
        ],
      ),
    );
  }

}
