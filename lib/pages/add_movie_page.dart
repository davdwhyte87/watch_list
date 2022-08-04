import 'package:flutter/material.dart';
import 'package:watch_list/styles/material_color.dart';
import 'package:watch_list/styles/text_theme.dart';
import 'package:watch_list/widgets/app_bar.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  final mockupWidth = 428;
  final mockupHeight = 926;
  final _textContoller = TextEditingController();
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final scale = mockupWidth/width;
    final textScaleFactor = width/mockupWidth;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(tittle: "Add New Movie", backButton: true,),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 5,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height:  150/mockupWidth* width,),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _textContoller,
                        decoration: InputDecoration(
                          hintText: "Movie Tittle",
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon:Icon(Icons.clear),
                            onPressed: () {
                              _textContoller.clear();
                            },
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _textContoller,
                        decoration: InputDecoration(
                            hintText: "Movie Link",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              icon:Icon(Icons.clear),
                              onPressed: () {
                                _textContoller.clear();
                              },
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                child: TextButton(
                  onPressed: () {  },
                  style: ButtonStyle(
                    backgroundColor: buttonPrimaryColor
                  ),
                  child: Text(
                    "Add Movie",
                    textScaleFactor: textScaleFactor,
                    style: buttonTextStyle,
                  ),
                ),
              ),
            ),
            // Flexible(
            //   flex: 4,
            //   child: Container(),
            // )
          ],
        ),
      ),
    );
  }
}

