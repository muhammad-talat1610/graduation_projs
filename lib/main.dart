import 'package:flutter/cupertino.dart';
import 'package:graduation_project/providers_Folder/location.dart';
import 'package:graduation_project/reg&login_Screen%20(auth)/signUpAsNusre.dart';
import 'package:graduation_project/services/services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:graduation_project/services/theme_servier.dart';
import 'BNBar_Screens/all about BNAVBAR screens.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await intialServices(); //// shared pref.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  SettingServices settingServices = Get.put(SettingServices());
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BNAVBAR(),
      theme: ThemeService().lightTheme,
      darkTheme: ThemeService().darkTheme,
      themeMode: ThemeService().getThemeMode(),
    );
  }
}
