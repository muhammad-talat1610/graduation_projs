
import 'package:flutter/cupertino.dart';
import 'package:graduation_project/services/services.dart';
import 'package:get/get.dart' ;

import 'BNBar_Screens/all about BNAVBAR screens.dart';


Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await intialServices(); //// shared pref.
runApp(MyApp());
}
class MyApp extends StatelessWidget {
SettingServices settingServices= Get.put(SettingServices());
Widget build(BuildContext context) {
return GetMaterialApp(
debugShowCheckedModeBanner: false,
home:BNAVBAR(),
//home:TimeOfVisitPage() ,
// home:ScreenWithoutLogin() ,

);
}
}
//
// Future<void> main() async {
//
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   WidgetsFlutterBinding.ensureInitialized();//// shared pref.
//   await intialServices();
//   runApp(MyApp());
// }
//
// Future<double> calculateDistance(lat1, lon1, lat2, lon2) async{
//   var p = 0.017453292519943295;
//   var c = cos;
//   var a = 0.5 - c((lat2 - lat1) * p) / 2 +
//       c(lat1 * p) * c(lat2 * p) *
//           (1 - c((lon2 - lon1) * p)) / 2;
//   return 12742 * asin(sqrt(a));
// }