import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/componenets/title_and_price.dart';

import 'ImageandIcons.dart';
import 'icon_cards.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageandIcons(),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),

          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width/2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    )
                  ),
                  color: kPrimaryColor,
                  onPressed: (){},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: FlatButton(
                  onPressed: (){},
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
}





