import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/widget/widgets%20screen%20(all%20widgets).dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl/intl.dart';

class doctorDetailsOfProfile extends StatefulWidget {
  State<doctorDetailsOfProfile> createState() => _userprofileState();
}

class _userprofileState extends State<doctorDetailsOfProfile> {
  final bool isRegistered = false;
  DateTime? _birthDate;
  TextEditingController _priceController = TextEditingController();
  TextEditingController _Location = TextEditingController();
  TextEditingController _Education = TextEditingController();
  TextEditingController _servant = TextEditingController();
  var dateController = TextEditingController();

  String price = '';
  final TextEditingController usernameController = TextEditingController();
  String ?selectedOption ;
  DateTime _selectedValue = DateTime.now();
  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [

                SizedBox(height: 50.0,),
            isRegistered
                ? Container(
              width: 300,
              height: 250,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (_image != null)
                      Image.file(
                        _image!,
                        height: 200,
                      ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, bottom: 50),
                      child: IconButton(
                        onPressed: () => _pickImage(ImageSource.gallery),
                        icon: Icon(
                          Icons.picture_in_picture,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
                : Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only( right: 60 ,left: 30 ),
                      child: Image(image: AssetImage("assets/images/imageProfile.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200 , right: 47, left: 15 ),
                      child: MaterialButtonScreen(titleOfButton: "Select Image" ,
                        colorOfButton: Colors.blue, widthOfButton: 350,
                        onPressed:(){_pickImage(ImageSource.gallery);},
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // isRegistered ? Container(
                //   width: 300,
                //   height: 250,
                //   child: Center(
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         if (_image != null)
                //           Image.file(
                //             _image!,
                //             height: 200,
                //           ),
                //        SizedBox(height: 5),
                //        Padding(
                //          padding: const EdgeInsets.only(left: 10.0 , bottom: 50),
                //          child: IconButton(
                //             onPressed: () => _pickImage(ImageSource.gallery),
                //             icon: Icon(Icons.picture_in_picture ,size: 50,),
                //       //    child: Text('Pick Image'),
                //           ),
                //        ),
                //       ],
                //     ),
                //   ),
                // )
                // : Container(
                //   width: double.infinity,
                //   height: double.infinity,
                //   color: Colors.green,
                // ),
                SizedBox(height: 30,),

                TextFormFieldForProfile(
                  controller: usernameController,
                  keyboardType: TextInputType.name,
                  label: ' Your Full name'.toString() ,
                  // validator: (value) {
                  //   return
                  //     ValidatorScreen(value!, 2, 90, "usernameController");
                  // },
                ),
                SizedBox(height: 10),
                TextFormFieldForProfile(
                  controller: _Location,
                  keyboardType: TextInputType.streetAddress,
                  label: 'Choose Your Location',
                  suffixIcon: Icons.add_location_alt,
                  // validator: (value) {
                  //   return
                  //     ValidatorScreen(value!, 2, 90, "usernameController");
                  // },
                ),
                SizedBox(height: 10),
                TextFormFieldForProfile(
                  controller: _Education,
                  keyboardType: TextInputType.name,
                  label: "Your Education",
                  // validator: (value) {
                  //   return
                  //     ValidatorScreen(value!, 2, 90, "usernameController");
                  // },
                ),

                SizedBox(height: 20,),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold , color: Colors.black38), // جعل النص يظهر في أقصى اليسار

                    labelText: 'Your Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),
                SizedBox(height: 4,),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold , color: Colors.black38), // جعل النص يظهر في أقصى اليسار

                    labelText: 'Your Second Number (optional)',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),
                SizedBox(height: 4),
                TextField(
                  maxLines: null, // يمكن للحقل أن يحتوي على عدة أسطر من النص
                  keyboardType: TextInputType.multiline, // يسمح بإدخال نص متعدد الأسطر
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold , color: Colors.black38), // جعل النص يظهر في أقصى اليسار

                    contentPadding: EdgeInsets.all(50),
                    label:Text('Write about your skills and Experience' ,overflow: TextOverflow.ellipsis ,),
                    border: OutlineInputBorder(), // إضافة حدود للحقل

                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(

                    labelStyle: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold , color: Colors.black38), // جعل النص يظهر في أقصى اليسار
                    border: OutlineInputBorder(),
                    labelText:selectedOption != null?selectedOption:"Choose Your Gender" ,
                    suffixIcon: DropdownButton<String>(
                      //   value: "choose Your ",
                      icon: Icon(Icons.keyboard_arrow_down ,size: 40),
                      onChanged:( newValue) {
                        setState(() {
                          selectedOption = newValue!;
                        });
                      },
                      items: <String>['Male', 'Female']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  readOnly: true,
                  controller: TextEditingController(
                    text: _birthDate != null ? DateFormat('yyyy-MM-dd').format(_birthDate!) : '',
                  ),
                  decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold , color: Colors.black38), // جعل النص يظهر في أقصى اليسار
                      labelText: 'Your Birthday',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.date_range)
                  ),
                  onTap: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: _birthDate ?? DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (selectedDate != null) {
                      setState(() {
                        _birthDate = selectedDate;
                      });
                    }
                  },

                ),
                SizedBox(height: 20,),

                TextFormFieldForProfile(
                  controller: _servant,
                  keyboardType: TextInputType.number,
                  label: " The Servant Price :$price ",
                  suffixIcon: Icons.attach_money ,
                  // validator: (value) {
                  //   return
                  //     ValidatorScreen(value!, 2, 90, "usernameController");
                  // },
                ),
                SizedBox(height: 100),

                MaterialButtonScreen(titleOfButton: "Save Data" , colorOfButton: Colors.blue),

              ],
            ),
          ),
        )


    );
  }
}

class TextFormFieldForProfile extends StatelessWidget {

  final TextEditingController controller;
  final TextInputType keyboardType ;
  final String label;
  bool? obsureText ;
  final  IconData? prefix;
  final  IconData? suffixIcon;
  //final Function()? suffixPressed;
  final String? Function(String?)? validator ;
  final void Function()? onPressed;
  final void Function()? onTap;

  TextFormFieldForProfile(
      {
        Key? key,
        required this.controller,
        required this.keyboardType,
        required this.label,
        this.prefix,
        this.obsureText,
        this.suffixIcon,
        this.validator,
        this.onPressed,
        this.onTap,
      }
      ) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obsureText == null || obsureText == false ? false : true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 2),
          labelText: label ,
          labelStyle: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold , color: Colors.black38), // جعل النص يظهر في أقصى اليسار
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(suffixIcon),
          ),
        ),
        onTap: onTap,
        validator: validator,
      ),
    );
  }

}