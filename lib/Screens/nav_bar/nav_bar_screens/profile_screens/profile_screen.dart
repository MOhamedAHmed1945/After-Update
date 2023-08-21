import 'package:flutter/material.dart';
import 'package:master/Screens/nav_bar/nav_bar_screens/profile_screens/edit_profile_screen.dart';
import 'package:master/Widgets/custom_cart_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String profileRoute = 'profileRoute';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[800],
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Positioned(
                top: 25,
                right: 35,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, EditeProfileScreen.editeProfileRoute);
                  },
                  icon: Icon(
                    Icons.edit_note_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
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
                  SizedBox(height: 30),
                  Text(
                    'Developer_2023@gmail.com',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'mostafa mohamed',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
            ),
            height: MediaQuery.of(context).size.height / 2.2,
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
                          SizedBox(height: 30),
                          CustomCartProfile(
                            icon: Icons.flag_outlined,
                            text: 'country',
                          ),
                          CustomCartProfile(
                            icon: Icons.apartment_outlined,
                            text: 'address',
                          ),
                          CustomCartProfile(
                            icon: Icons.phone_outlined,
                            text: 'number',
                          ),
                          CustomCartProfile(
                            icon: Icons.hdr_auto_sharp,
                            text: 'age',
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

/*

Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            color: Colors.green,
          ),
          child: Column(
            children: [
              SizedBox(height: 30),
              CustomCartProfile(
                icon: Icons.flag,
                text: 'Egypt',
              ),
              CustomCartProfile(
                icon: Icons.apartment,
                text: 'Alex',
              ),
              CustomCartProfile(
                icon: Icons.phone,
                text: '01212345678',
              ),
              CustomCartProfile(
                icon: Icons.account_tree_outlined,
                text: 'Egyption',
              ),
            ],
          ),

 */
