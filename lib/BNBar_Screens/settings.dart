import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/services/theme_servier.dart';
import 'package:graduation_project/services/theme_servier.dart';
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
          Center(child: Text('Settings' , style: TextStyle(fontSize: 40 ,
              fontWeight: FontWeight.bold , fontFamily: "cairo" , color: Colors.cyan))),

          ListTile(


            title: Text('Dark mode'),
            trailing: 
            IconButton(icon: Icon(Icons.brightness_2_outlined), 
           onPressed: () {
             ThemeService().changeTheme();
              },
              ),
              
           
          ),
          Divider(),
          ListTile(
            title: Text('Language'),
            trailing: Switch(
              value: isArabicLanguageSelected,
              onChanged: toggleLanguage,
            ),
          ),
          Divider(),
          ListTile(
            title: Text('My profile '),
            onTap: () {

              // Add logic to navigate to the patient information page
            },
          ),
          Divider(),
          ListTile(
            title: Text('Country'),
            subtitle: Text(selectedCountry),
            onTap: () {
              // Add logic to show a dialog to select a country
            },
          ),
          Divider(),
          ListTile(
            title: Text('Privacy policy'),
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


