import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/services/colors.dart';
import '../localization (languages of app)/changelocale.dart';
import 'all about BNAVBAR screens.dart';
import 'package:get/get.dart';

class MedicalSettingsPage extends StatefulWidget {
  @override
  _MedicalSettingsPageState createState() => _MedicalSettingsPageState();
}
class _MedicalSettingsPageState extends State<MedicalSettingsPage> {
  bool isDarkModeEnabled = false;
  bool isArabicLanguageSelected = false;
  String selectedCountry = '';
  String privacyPolicyUrl = '';

  void toggleDarkMode(bool value) {
    setState(() {
      isDarkModeEnabled = value;
    });
  }

  void toggleLanguage(bool value) {
    setState(() {
      isArabicLanguageSelected = value;
    });
  }

  void selectCountry(String country) {
    setState(() {
      selectedCountry = country;
    });
  }

  void openPrivacyPolicy() {
    // Add logic to open the privacy policy page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Center(child: Text('Settings'.tr , style: TextStyle(fontSize: 40 ,
              fontWeight: FontWeight.bold , fontFamily: "cairo" , color: mainColor))),

          ListTile(

            title: Text('Dark mode'.tr),
            trailing: Switch(
              value: isDarkModeEnabled,
              onChanged: toggleDarkMode,
            ),
          ),
          Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 15,),
          Text("Language".tr , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400),
          ),
Spacer(),
          Row( mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(width: 95,
                child: MaterialButton( color: mainColor,
                    onPressed: () {
                      langController.changeLanguage("ar");
                      Get.to(BNAVBAR());
                    }, child: Text("Arabic".tr , style:
                    TextStyle( fontFamily: "cairo", fontSize: 18 ,color:grayColor ,fontWeight: FontWeight.bold, fontStyle:FontStyle.normal )
                    )),
              ),
              SizedBox(width: 10),
              Container(width: 105,
                child: MaterialButton( color: mainColor,onPressed: () {  langController.changeLanguage("en");
                Get.to(BNAVBAR());
                }, child: Text("English".tr , style:
                TextStyle( fontFamily: "cairo", fontSize: 17 ,color: grayColor ,fontWeight: FontWeight.bold, fontStyle:FontStyle.normal )
                )),
              ),
            ],
          ),


        ],
      ),
          Divider(),
          ListTile(
            title: Text('My profile '.tr),
            onTap: () {

              // Add logic to navigate to the patient information page
            },
          ),
          Divider(),
          ListTile(
            title: Text('Country'.tr),
            subtitle: Text(selectedCountry),
            onTap: () {
              // Add logic to show a dialog to select a country
            },
          ),
          Divider(),
          ListTile(
            title: Text('Privacy policy'.tr),
            onTap: openPrivacyPolicy,
          ),
        ],
      ),
    );
  }
// Add other state variables and methods as needed
}
class settingsDetailsScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(body:  Container(height: double.maxFinite,child: MedicalSettingsPage()),);
  }
}


