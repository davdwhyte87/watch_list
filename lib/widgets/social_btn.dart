import 'package:flutter/material.dart';

import '../helpers/scaller.dart';

class SocialButton extends StatelessWidget {
  String type;

  SocialButton({required this.type}){

  }


  
  @override
  Widget build(BuildContext context) {
    Scaller scaller = Scaller(context: context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(

              image: Image.asset("assets/$type.png", scale: scaller.scale,).image,
              fit: BoxFit.fill
            )
          ),
          child: SizedBox(height:30, width: 30,),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: TextButton(
                onPressed: () {  },
                child: Text("j_davidwhyte", textScaleFactor: scaller.textScaleFactor,)
            )
        )
      ],
    );
  }
}


