import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static const primaryColor = Color(0xFFE94057);
  static const bgColor = Color(0xFFF9F9F9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Container(
        color: bgColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // profile head
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/ppage_head.png"),
                    fit: BoxFit.fill
                  )
                ),
                child: Column(
                  children:  [
                    SizedBox(height: 10,),
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/ninja.jpg"),
                        radius: 60,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                style:   ButtonStyle(
                                  shape: MaterialStateProperty.all<OutlinedBorder>(CircleBorder()),
                                 backgroundColor:MaterialStateProperty.all<Color>(Colors.white)
                                ),
                                child: Icon(Icons.edit, color: primaryColor,),
                                onPressed: () {  },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "John Snow",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    const Text(
                      "John Snow",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 15
                      ),
                    ),

                  ],
                )
              ),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "John Maxwell",
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "John Maxwell",
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            )
            // account settings
          ],
        ),
      ),
    );
  }
}
