import 'package:flutter/material.dart';
import 'package:watch_list/pages/add_movie_page.dart';
import 'package:watch_list/pages/pro_page.dart';
import 'package:watch_list/pages/user_profile_page.dart';
import 'package:watch_list/widgets/movie_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const primaryColor = Color(0xFFE50914);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("My Watch List", style: TextStyle(color: primaryColor, fontFamily: 'Poppins'),),
        centerTitle: true,
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
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.all(30),
            child: MovieItem(),
          );
        },
      ),
    );
  }


}
