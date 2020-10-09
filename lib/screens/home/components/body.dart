import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/recommended_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

import 'featured_plant.dart';
import 'header_with_search_box.dart';
class Body extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size,),
          TitleWithMoreBtn(title: 'Recommended', press: (){},),
          RecommendedPlantCardScroll(),

          TitleWithMoreBtn(title: 'Featured Plants', press: (){},),

          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,),

        ],
      ),
    );
  }
}





