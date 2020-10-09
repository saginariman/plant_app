import 'package:flutter/material.dart';

import '../constants.dart';

class MyBottomNavBar extends StatelessWidget{
  MyBottomNavBar({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding*2,
        right: kDefaultPadding*2,
        bottom: kDefaultPadding/2,
      ),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.adjust),
            onPressed: (){},
            color: kPrimaryColor,
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: (){},
            color: kPrimaryColor,
          ),
          IconButton(
            icon: Icon(Icons.account_box),
            onPressed: (){},
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }


}