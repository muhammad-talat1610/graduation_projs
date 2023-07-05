import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/providers_Folder/location.dart';
import 'package:graduation_project/services/colors.dart';
import '../providers_Folder/controller.dart';

class DoctorProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<getxController>(
      builder: (controller) {
        final doctorData = controller.data[index];

        return Scaffold(
          appBar: AppBar(
            backgroundColor: mainColor,
            title: Text('Doctor Profile ${doctorData["name"]}'),
          ),
          body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: ${doctorData["name"]}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Address: ${doctorData["address"]}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  'Price: ${doctorData["price"]}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  'Rate: ${doctorData["rate"]}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Add the action you want to perform when the button is pressed
                  },
                  child: Text('Order'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
