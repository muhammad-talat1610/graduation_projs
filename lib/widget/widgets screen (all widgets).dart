import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

ValidatorScreen(String value, int min, int max, String type) {
  if (type == "usernameController") {
    if (!GetUtils.isUsername(value)) {
      return "not valid username";
    }
  }
  if (type == "emailController") {
    if (!GetUtils.isEmail(value)) {
      return "not valid email";
    }
  }

  if (type == "phoneNumberController") {
    if (!GetUtils.isPhoneNumber(value)) {
      return "this is not Correct Number";
    }

  }

  if (value.isEmpty) {
    return "can't be Empty";
  }

  if (value.length < min) {
    return "can't be less than $min";
  }

  if (value.length > max) {
    return "can't be larger than $max";
  }
}

class ShowPasswordClass extends GetxController{
  bool isshowPassword=true ;
  showPassword(){
    isshowPassword = isshowPassword == true ? false : true;
    update();
  }}

ShowPasswordClass controller = Get.put(ShowPasswordClass());

//////////////////

class TextFormFieldScreen extends StatelessWidget {

  final TextEditingController controller;
  final TextInputType keyboardType ;
  final String label;
  bool? obsureText ;
  final  IconData prefix;
  final  IconData? suffixIcon;
  //final Function()? suffixPressed;
  final String? Function(String?)? validator ;
  final void Function()? onPressed;
 final void Function()? onTap;
  // عشان onPressed تتنفذ لا تضع كلمة void or required
  // ولا حتي ال (){} دول تحت هنخليها كدا >>> suffixIcon: IconButton(onPressed:onPressed

  TextFormFieldScreen(
      {Key? key, required this.controller, required this.keyboardType,
        required this.label, required this.prefix,this.obsureText , this.suffixIcon,
        required this.validator, this.onPressed, this.onTap,  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10 ,right: 8 , left: 8),
      child: TextFormField(controller:controller, keyboardType:  keyboardType,
        obscureText:obsureText == null||obsureText==false?false : true,
        decoration: InputDecoration( border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0))),
          contentPadding: EdgeInsets.symmetric(vertical: 18),
          label:Text(label),
          prefixIcon: Icon(prefix) ,
          suffixIcon: IconButton(onPressed:onPressed , icon: Icon(suffixIcon)),
        ),
        onTap:onTap ,
        validator: validator,
      ),
    );
  }
}

Widget MaterialButtonScreen({ required String titleOfButton,double? widthOfButton ,FontWeight? fontWeight, Function()? onPressed,IconData? Icons ,double? fontSize ,Color? colorOfButton}){
  return MaterialButton(onPressed: onPressed ,
      child: Container(width:widthOfButton , height:48.0 ,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(0)) ,
              color: colorOfButton ),
          child: Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons , color: Colors.white),
              SizedBox(width: 8.0,),
              Text('${titleOfButton}',style: TextStyle(color: Colors.white ,
                  fontSize: fontSize , fontWeight:fontWeight),),
            ],
          )
      ));
}

class onboardingModel{
  late String  imagePath;
  late String title;
  late String? description; //describe
  onboardingModel({ title , required this.imagePath ,
    this.description});
}

Widget onboardingWidget( Model){
  return
    Container( height: double.infinity,
      child:
      ListView(
        children: [
          Column(
            children: [
           //   Text('${Model.title}' , style: TextStyle( fontFamily: "cairo", fontSize: 30 ,color: Colors.black87 ,fontWeight: FontWeight.bold, fontStyle:FontStyle.normal )),
              Image(image: AssetImage('${Model.imagePath}' ), fit: BoxFit.fill, height: 450 ,width:double.infinity),
           SizedBox(height: 20,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0 ,  ), child: Text('${Model.description}', style: TextStyle(fontWeight: FontWeight.bold ,textBaseline: TextBaseline.alphabetic , wordSpacing: 5  , fontSize: 20 , color: Colors.black54)),),

            ],
          ),
        ],
      ),
    );

}

class faceAndGoogleSignInScreen extends StatelessWidget {
  final Widget Function() RegisterScreen ;

  const faceAndGoogleSignInScreen({Key? key, required this.RegisterScreen}) : super(key: key);

  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Don\'t have any account ?',style: TextStyle(color: Colors.black , fontSize: 14 , fontWeight: FontWeight.bold)),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
          }, child: Text('Register Now..' ,style: TextStyle(color: Colors.cyan , fontSize: 15 , fontWeight: FontWeight.bold)))
        ],),

      const Text('-OR-' , style: TextStyle(fontSize: 18),),
      const SizedBox(
        height: 7,
      ),
      InkWell(
        onTap: (){
          //TODO: facebook auth
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey[300]! , width: .5)
          ),

          margin: const EdgeInsets.only(left: 20, right: 20 , bottom: 15),
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.facebook , color: Colors.blue,),
              Text('Sign In With Facebook')
            ],
          ),
        ),
      ),
      InkWell(
        onTap: (){
          //TODO: google auth
        },
        child: Container(

          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey[300]! , width: .5)
          ),

          margin: const EdgeInsets.only(left: 20, right: 20 , bottom: 15),
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.social_distance , color: Colors.red,),
              Text('Sign In With Google    ')
            ],
          ),
        ),
      ),

    ],);
  }
}

Widget WelcomeMessageInLoginScreen( mainTitle,   detailTitle, String IconImage){
  return
    Column(
      children: [
        SizedBox(height: 20.0,) ,

        Column(
          children:  [
            Image(image: AssetImage("IconImage" ) ,height: 100),

            Text(
              '${mainTitle}',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 15.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '${detailTitle}', textAlign: TextAlign.center,
                maxLines: 2, overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.grey, fontSize: 18,),
              ),)],),],);}

Widget WelcomeMessageInRegisterScreen({required String mainTitle ,String? welcomeMessage , String? detailTitle }){
  return Column(
    children: [
      Column(
        children:  [
          Text(
            '${mainTitle}',
            style: TextStyle( fontFamily: "cairo",
                fontSize: 42, fontWeight: FontWeight.bold , color:Colors.cyan),
          ),
          SizedBox(height: 15.0,),
          Text(
            '${welcomeMessage}',
            style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.w400 , ),
          ),
          SizedBox(height: 15.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '${detailTitle}', textAlign: TextAlign.center,
              maxLines: 2, overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey, fontSize: 18,),
            ),)],),],);
}

Widget boxInBoxContainerWidget (String maintext ,String titletext ,Color colorOfBigBox , Color colorOfSmallBox  ,IconData icon){
return
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 15),
    child:   Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) , color:colorOfBigBox,),
        height: 170 ,width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Expanded(
              child: Row(
                children: [
                  Text( maintext ,style:TextStyle(color: Colors.cyan  ,fontSize: 35, fontWeight: FontWeight.bold ,fontFamily: "cairo" ) ),
                  Spacer(),
                  Icon(icon , size: 50 , color: Colors.cyan, ) ,

                ],
              ),
            ),
          Stack(
            children: [
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8) , color: colorOfSmallBox,),
                height: 50 ,width: double.infinity,),
              Center(child: Text( titletext ,style:TextStyle(color: Colors.cyan  ,fontSize: 30 ,fontWeight: FontWeight.bold ) ))
            ],
          ) ,
          SizedBox(height: 10,)
          ],),
        )),
  ) ;

}