import 'package:flutter/material.dart';

import '../pages/add_movie_page.dart';
import '../pages/user_profile_page.dart';
import '../styles/material_color.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String tittle;
  final bool? backButton;
  CustomAppBar({Key? key, required this.tittle, required this.backButton}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(tittle, style: TextStyle(color: primaryColor, fontFamily: 'Poppins'),),
      centerTitle: true,
      leading: backButton!? IconButton(
        icon: Icon(
          Icons.arrow_back_sharp,
          color: primaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ): null,
      actions: [
      ],
);
  }
}


class FullAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String tittle;
  final bool? backButton;
  FullAppBar({Key? key, required this.tittle, required this.backButton}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(tittle, style: TextStyle(color: primaryColor, fontFamily: 'Poppins'),),
      centerTitle: true,
      leading: backButton!? IconButton(
        icon: Icon(
          Icons.arrow_back_sharp,
          color: primaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ): null,
      actions: [
        IconButton(
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context)=> UserProfilePage()));
          },
          icon: Icon(Icons.person),
          color: primaryColor,
          iconSize: 30,
        ),
        IconButton(
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context)=> AddPage()));
          },
          icon: Icon(Icons.add),
          color: primaryColor,
          iconSize: 30,
        ),
      ],
    );
  }
}

