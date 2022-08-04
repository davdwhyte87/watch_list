import 'package:flutter/material.dart';
import 'package:watch_list/styles/material_color.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({Key? key}) : super(key: key);

  String getYoutubeThumbnail(String videoUrl) {
    final Uri? uri = Uri.tryParse(videoUrl);
    if (uri == null) {
      return "null";
    }

    return 'https://img.youtube.com/vi/${uri.queryParameters['v']}/0.jpg';
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.width,
          child: Image.network(getYoutubeThumbnail("https://www.youtube.com/watch?v=aIsFywuZPoQ")),
          decoration: BoxDecoration(
            image: DecorationImage(
              // fit: BoxFit.fitWidth,
              image:  Image.network(getYoutubeThumbnail("https://www.youtube.com/watch?v=pyM3z73oMAk")).image,
            ),
          ),
          // child: Image(image: AssetImage("assets/movie.png"),),
        ),
        Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                flex: 3,
                child: Container(),
              ),
              Flexible(
                flex: 4,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: FittedBox(
                    child: Text(
                      "366 Days",
                      style: TextStyle(
                        fontSize: 30,
                        color: Theme.of(context).primaryColor,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: TextButton.icon(
                    style: ButtonStyle(),
                    onPressed: (){},
                    icon: Icon(Icons.comment, color: textColor,),
                    label: Text(
                      "3,456",
                      style: Theme.of(context).primaryTextTheme.bodySmall,
                    ),
                  ),
                ),
              )
            ],
          )
        )
      ],
    );
  }
}
