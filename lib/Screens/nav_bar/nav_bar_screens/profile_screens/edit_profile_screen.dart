import 'package:flutter/material.dart';
import '../../../../Widgets/custom_TextFormFiled.dart';

// ignore: must_be_immutable
class EditeProfileScreen extends StatefulWidget {
  const EditeProfileScreen({Key? key}) : super(key: key);
  static String editeProfileRoute = 'editeProfileRoute';

  @override
  State<EditeProfileScreen> createState() => _EditeProfileScreenState();
}

class _EditeProfileScreenState extends State<EditeProfileScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController ageController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? email, userName, country, address, phoneNumber, age;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        color: Colors.blue[800],
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
              ),
              title: Text(
                'Edite Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                ),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  icon: Icon(
                    Icons.save_alt,
                    size: 30,
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/Education.jpeg'),
                          radius: 80,
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 140,
                  right: 120,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.only(
                top: 20,
                right: 20,
                left: 20,
              ),
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CustomTextFormFiled(
                              text: 'Email',
                              icon: Icons.email_outlined,
                              controller: emailController,
                              textInputType: TextInputType.emailAddress,
                              onSaved: (value) {
                                email = value;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'This Field Is Required';
                                }
                                if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$')
                                    .hasMatch(value)) {
                                  return 'Please Enter a Valid Email';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormFiled(
                              text: 'User Name',
                              icon: Icons.person_outline_outlined,
                              controller: userNameController,
                              textInputType: TextInputType.text,
                              onSaved: (value) {
                                userName = value;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Your User Name';
                                }
                                if (value.length <= 3) {
                                  return 'User Name Up < 3 Char';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormFiled(
                              text: 'Country',
                              icon: Icons.flag_circle_outlined,
                              controller: countryController,
                              textInputType: TextInputType.text,
                              onSaved: (value) {
                                country = value;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Your Country';
                                }
                                if (value.length <= 2) {
                                  return 'Country Up < 2 Char';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormFiled(
                              text: 'Address',
                              icon: Icons.apartment_outlined,
                              controller: addressController,
                              textInputType: TextInputType.text,
                              onSaved: (value) {
                                address = value;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Your Address';
                                }
                                if (value.length == 12) {
                                  return 'Address  12 Address';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormFiled(
                              text: 'Phone Number',
                              icon: Icons.phone_android_outlined,
                              controller: phoneNumberController,
                              textInputType: TextInputType.phone,
                              onSaved: (value) {
                                phoneNumber = value;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Your Phone Number';
                                }
                                if (value.length > 12) {
                                  return 'Phone Number 12 Number';
                                }
                                return null;
                              },
                            ),
                            CustomTextFormFiled(
                              text: 'Age',
                              icon: Icons.hdr_auto_sharp,
                              controller: ageController,
                              textInputType: TextInputType.number,
                              onSaved: (value) {
                                age = value;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Your Age';
                                }
                                if (value.length == 1) {
                                  return 'Age 2 Number';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}