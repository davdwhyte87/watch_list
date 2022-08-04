import 'package:flutter/material.dart';
import 'package:watch_list/pages/update_profile.dart';
import 'package:watch_list/styles/material_color.dart';
import 'package:watch_list/styles/text_theme.dart';
import 'package:watch_list/widgets/app_bar.dart';
import 'package:watch_list/widgets/social_btn.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  String aboutme = "Hello I am David Whyte John. I am very interested intechnology and business."
      " I am a product manager and an entrepreneur. I love golf and long tennis. Follow me on watch "
      "list and watch with me!";
  final mockupWidth = 428;
  final mockupHeight = 926;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final scale = mockupWidth/width;
    final textScaleFactor = width/mockupWidth;
    return Scaffold(
      appBar: CustomAppBar(tittle: "User Profile", backButton: true,),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height:  70/mockupWidth* width,),
            Flexible(
              flex: 2,
              child: Container(
                child: CircleAvatar(
                  backgroundImage: Image.asset("assets/ninja.jpg", scale: scale,).image,
                  radius: 60,

                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(flex: 5,child: Container()),
                  Flexible(
                    flex: 5,
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=> UpdateProfilePage()));
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  aboutme,
                  style: BodyTextStyle,
                  textScaleFactor: textScaleFactor,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: buttonPrimaryColor
                    ),
                    onPressed: () {  },
                    child: Text(
                      "My Watch List",
                      textScaleFactor: textScaleFactor,
                      style: buttonTextStyle,
                    )
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    child: SocialButton(type: "twitter",),
                  ),
                  Flexible(
                    child: SocialButton(type: "instagram",),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
