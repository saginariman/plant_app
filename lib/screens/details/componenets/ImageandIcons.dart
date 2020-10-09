import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'icon_cards.dart';

class ImageandIcons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding*3),
      child: SizedBox(
        height: size.height *0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding*3),
                child: Column(
                  children: [
                    Align(
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: Icon(Icons.arrow_back),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),

                    IconCard(icon: Icons.wb_sunny,),
                    IconCard(icon: Icons.settings_system_daydream,),
                    IconCard(icon: Icons.grain,),
                    IconCard(icon: Icons.opacity,),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height*0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img1.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}