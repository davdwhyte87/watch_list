import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:watch_list/styles/text_theme.dart';
import 'package:watch_list/widgets/app_bar.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          tittle: "Update Profile",
          backButton: true,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                flex: 5,
                child: Image(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.google),
                    label: const Text(
                      "Signin bro",
                      style: buttonTextStyle,
                    ),
                  )),
              const Expanded(
                flex: 4,
                child: Text("data"),
              ),
            ],
          ),
        ));
  }
}
