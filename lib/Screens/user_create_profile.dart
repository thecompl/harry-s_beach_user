// ignore_for_file: require_trailing_commas

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:harrys_beach_bistro/Screens/search_home_screen.dart';
import 'package:harrys_beach_bistro/Screens/tricolor_divider.dart';

import '../Widget/BottomBar.dart';
import '../config/Textstyles.dart';
import '../config/color_pallete.dart';

class User_Create_Profile extends StatefulWidget {
  @override
  _User_Create_ProfileState createState() => _User_Create_ProfileState();
}

class _User_Create_ProfileState extends State<User_Create_Profile> {
  int _value = 1;
  TextEditingController Fullname = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController phnumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController stateofresidence = TextEditingController();
  late File _image;

  @override
  // ignore: always_declare_return_types, require_trailing_commas

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 10),
                    child: Container(
                      width: size.width,
                      child: Text(
                        'Create Profile',
                        style: TextStyles.withletterspacing(
                          TextStyles.mb20,
                          ColorPallete.black,
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  TriColorDividor(margin: 1),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: size.height * 0.15,
                            width: size.width * 0.3,
                            decoration: BoxDecoration(
                              color: ColorPallete.menucardcolor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            child: Icon(Icons.add_a_photo)),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      textfield(
                        'Full name',
                        Fullname,
                        20,
                      ),
                      textfield('Date of Birth', dob, 20),
                      Container(
                        width: 300,
                        child: Row(
                          children: [
                            Radio(
                                value: 1,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value as int;
                                  });
                                }),
                            Text(
                              'Male',
                              style: TextStyles.withletterspacing(
                                TextStyles.mb14,
                                ColorPallete.darlgrey,
                                0.5,
                              ),
                            ),
                            Radio(
                                value: 2,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value as int;
                                  });
                                }),
                            Text(
                              'Female',
                              style: TextStyles.withletterspacing(
                                TextStyles.mb14,
                                ColorPallete.darlgrey,
                                0.5,
                              ),
                            ),
                            Radio(
                                value: 3,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value as int;
                                  });
                                }),
                            Text(
                              'Other',
                              style: TextStyles.withletterspacing(
                                TextStyles.mb14,
                                ColorPallete.darlgrey,
                                0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      textfield('Phone number ', phnumber, 20),
                      textfield('E-mail ID', email, 20),
                      textfield('State of Residence', stateofresidence, 20),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      child: SizedBox(
                          height: 40, //height of button
                          width: 100, //width of button
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      Colors.blue, //background color of button
                                  side: BorderSide(
                                      width: 1,
                                      color:
                                          Colors.blue), //border width and color
                                  elevation: 3, //elevation of button
                                  shape: RoundedRectangleBorder(
                                      //to set border radius to button
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: EdgeInsets.all(
                                      10) //content padding inside button
                                  ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomBar()),
                                );
                              },
                              child: Text(
                                "NEXT",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    fontFamily: "Montserrat",
                                    letterSpacing: 2),
                              ))))
                ],
              ),
            ),
          ),
        ));
  }

  Widget textfield(
      String title, TextEditingController controller, double height) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Container(
          height: size.height * 0.06,
          padding: EdgeInsets.only(left: 40, right: 40),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                hintText: title,
                hintStyle: TextStyles.withletterspacing(
                  TextStyles.mb14,
                  ColorPallete.darlgrey,
                  0.5,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: new BorderSide(color: Colors.black))),
          ),
        ),
        SizedBox(
          height: 7,
        )
      ],
    );
  }
}
