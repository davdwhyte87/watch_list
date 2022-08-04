import 'package:flutter/material.dart';
import 'package:watch_list/helpers/scaller.dart';
import 'package:watch_list/styles/material_color.dart';
import 'package:watch_list/styles/text_theme.dart';
import 'package:watch_list/widgets/app_bar.dart';

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({Key? key}) : super(key: key);

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  @override
  Widget build(BuildContext context) {
    Scaller scaller = Scaller(context: context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(tittle: "Update Profile", backButton: true,),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: scaller.getSizedBoxHeight(0),),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Twitter Handle",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Instagram Handle",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 7,
                  decoration: InputDecoration(
                    hintText: "About me",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: buttonPrimaryColor
                      ),
                      onPressed: () {  },
                      child: Text(
                        "My Watch List",
                        textScaleFactor: scaller.textScaleFactor,
                        style: buttonTextStyle,
                      )
                  ),
                ),
              ),
            ],
          ),
          
        ),
      ),
    );
  }


}

