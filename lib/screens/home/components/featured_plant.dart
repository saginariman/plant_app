import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: "assets/images/50927468ded98093041f09dcc5f5e233.jpg",
            press: (){},
          ),
          FeaturePlantCard(
            image: "assets/images/bf077d2ebb2e07bd11d9124dac7a2db7.jpg",
            press: (){},
          ),
          FeaturePlantCard(
            image: "assets/images/pejzazhi-i-puteshestviya-ot-frauke-xagen-1.jpg",
            press: (){},
          ),
          FeaturePlantCard(
            image: "assets/images/s1200.jpeg",
            press: (){},
          ),

          FeaturePlantCard(
            image: "assets/images/scale_1200.jpeg",
            press: (){},
          ),

          FeaturePlantCard(
            image: "assets/images/original.jpg",
            press: (){},
          ),
        ],
      ),
    );
  }


}

class FeaturePlantCard extends StatelessWidget{

  FeaturePlantCard({Key key, this.image, this.press,}):super(key:key);
  final String image;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding/2,
        ),

        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }

}