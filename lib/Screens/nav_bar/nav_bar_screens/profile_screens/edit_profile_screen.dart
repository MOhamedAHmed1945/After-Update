import 'package:flutter/material.dart';
import 'package:master/Widgets/custom_appbar.dart';
import '../../../../Widgets/custom_TextFormFiled.dart';
import '../../../../Widgets/custom_cart_profile.dart';

class EditeProfileScreen extends StatelessWidget {
   EditeProfileScreen({Key? key}) : super(key: key);
  static String editeProfileRoute = 'editeProfileRoute';
 TextEditingController emailController= TextEditingController();
 TextEditingController userNameController= TextEditingController();
 TextEditingController countryController= TextEditingController();
 TextEditingController addressController= TextEditingController();
 TextEditingController phoneNumberController= TextEditingController();
 TextEditingController ageController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
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
                onPressed: () {},
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
                          ),
                          CustomTextFormFiled(
                            text: 'User name',
                            icon: Icons.person_outline_outlined,
                            controller: userNameController,
                            textInputType: TextInputType.text,
                          ),
                          CustomTextFormFiled(
                            text: 'Country',
                            icon: Icons.flag_circle_outlined,
                            controller: countryController,
                            textInputType: TextInputType.text,
                          ),
                          CustomTextFormFiled(
                            text: 'Address',
                            icon: Icons.apartment_outlined,
                            controller: addressController,
                            textInputType: TextInputType.text,
                          ),
                          CustomTextFormFiled(
                            text: 'Phone number',
                            icon: Icons.phone_android_outlined,
                            controller: phoneNumberController,
                            textInputType: TextInputType.phone,
                          ),
                          CustomTextFormFiled(
                            text: 'Age',
                            icon: Icons.hdr_auto_sharp,
                            controller: ageController,
                            textInputType: TextInputType.number,
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
    );
  }
}