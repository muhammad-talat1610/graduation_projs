import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/BNBar_Screens/Services_App_Screen/priceOfServent.dart';
import 'package:graduation_project/BNBar_Screens/all%20about%20BNAVBAR%20screens.dart';
import 'package:graduation_project/providers_Folder/location.dart';
import 'package:graduation_project/services/services.dart';
import 'package:get/get.dart' ;
import 'package:firebase_core/firebase_core.dart';
import 'localization (languages of app)/change language by device lang.dart';
import 'localization (languages of app)/changelocale.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
await intialServices(); //// shared pref.
runApp(MyApp());
}
// void initializeIndex() {
//   index =controller.data.length;
// }
class MyApp extends StatelessWidget {
SettingServices settingServices= Get.put(SettingServices());
Widget build(BuildContext context) {
return GetMaterialApp(
debugShowCheckedModeBanner: false,
home:BNAVBAR(),
//home:TimeOfVisitPage() ,
// home:ScreenWithoutLogin() ,
  locale: langController.language, //return the language device
  //locale: cont.intialLanguage,  //return the language device
  translations: mylocale(),
  // return the class of translation // the initial language
// theme: ThemeData(
//   textTheme: TextTheme(
//     bodyText1:TextStyle( fontFamily: "cairo", fontSize: 30 ,color: Colors.black87 ,fontWeight: FontWeight.bold, fontStyle:FontStyle.normal ),
//     headline1:  TextStyle(fontWeight: FontWeight.bold ,textBaseline: TextBaseline.alphabetic ,
//         wordSpacing: 2  , fontSize: 18 , color: Colors.black54))),


// //themes
//   theme: ThemeData(
//       appBarTheme: AppBarTheme(backgroundColor: Colors.white,
//       iconTheme: IconThemeData(color: Colors.black),
//       elevation: 0.0,
//       // دا علشان يخفي الخط الفاصل مابين الاباار والباضي
//       // systemOverlayStyle: SystemUiOverlayStyle(
//       //     statusBarColor: Colors.white,
//       //     statusBarIconBrightness: Brightness.dark),
//       //  //  (الاستيتس بار)الجزء العلوي اللي فيه البطاريه والشريحه
//
//       titleTextStyle: TextStyle(color: Colors.black,
//         fontWeight: FontWeight.bold,
//         fontSize: 25.0,)
//     //اعدادات ثابته لأي نص
//     // خليت اعدادات جميع النصوص واحده علشان اوفر ف الكود بحيث لكا اجي اكتب تيكست التيكست ستايل هيكون موجود
//   ),
//       textTheme: TextTheme(bodyText1: TextStyle(
//         fontWeight: FontWeight.bold,
//         color: Colors.black,
//         fontSize: 17.0,)),
//       primarySwatch: Colors.deepOrange,
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         selectedItemColor: Colors.deepOrange,
//         backgroundColor: Colors.white,
//         type: BottomNavigationBarType.fixed,),
//       // اعدادات ثابته لاي بوتم ناف بار
//       scaffoldBackgroundColor: Colors.white,
//       // وحدنا لون الاسكافولد
//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//           backgroundColor: Colors.deepOrange)
//   ),
//   darkTheme: ThemeData(
//       textTheme: TextTheme(bodyText1: TextStyle(
//         fontWeight: FontWeight.bold,
//         color: Colors.white,
//         fontSize: 17.0,)),
//      // primarySwatch:Colors.grey,
//       appBarTheme: AppBarTheme(backgroundColor: Colors.black26,
//         //   iconTheme:IconThemeData(color: Colors.black),
//         elevation: 0.0,
//         // دا علشان يخفي الخط الفاصل مابين الاباار والباضي
//         backwardsCompatibility: false,
//         // عشان اقدر اتحكم في الاستيتس بار
//         systemOverlayStyle: SystemUiOverlayStyle(
//             statusBarColor: Colors.black38,
//             statusBarIconBrightness: Brightness.light),
//         //  (الاستيتس بار)الجزء العلوي اللي فيه البطاريه والشريحه
//         //   titleTextStyle: TextStyle(color:Colors.black, fontWeight:FontWeight.bold , fontSize: 25.0,)
//         //اعدادات ثابته لأي نص
//         // خليت اعدادات جميع النصوص واحده علشان اوفر ف الكود بحيث لكا اجي اكتب تيكست التيكست ستايل هيكون موجود
//       ),
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         unselectedIconTheme: IconThemeData(color: Colors.white),
//         // icon not selected
//         selectedIconTheme: IconThemeData(color: Colors.white),
//         // icon selected
//         selectedLabelStyle: TextStyle(color: Colors.grey[200]),
//         // Color when you clicked on icon
//         unselectedItemColor: Colors.grey,
//         unselectedLabelStyle: TextStyle(color: Colors.white),
//         // the text has not selected
//         selectedItemColor: Colors.deepOrange,
//         backgroundColor: Colors.black26,
//         type: BottomNavigationBarType.fixed,),
//       // اعدادات ثابته لاي بوتم ناف بار
//       scaffoldBackgroundColor: Colors.black26,
//       // وحدنا لون الاسكافولد
//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//           backgroundColor: Colors.deepOrange)
//   ),
//   themeMode:controller.darkMode?ThemeMode.dark :ThemeMode.light,
);



}}

