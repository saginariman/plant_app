import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_secreens.dart';

import '../../../constants.dart';

class RecommendedPlantCardScroll extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            image: "assets/images/img1.jpg",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendedPlantCard(
            image: "assets/images/2f09236abb5bb9a0546907f8891f6e62.jpg",
            title: "Angelica",
            country: "London",
            price: 850,
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendedPlantCard(
            image: "assets/images/7b69b067bc72d383502163663dfb0ee8.jpg",
            title: "Julia",
            country: "USA",
            price: 650,
            press: (){},
          ),
          RecommendedPlantCard(
            image: "assets/images/322854febc4864b2456cad7e5cb9fe75.jpg",
            title: "Portugal",
            country: "Madrid",
            price: 960,
            press: (){},
          ),
        ],
      ),
    );
  }

}
class RecommendedPlantCard extends StatelessWidget {
  RecommendedPlantCard({Key key, this.image, this.country, this.price, this.press, this.title}):super(key : key);

  final image, title, country;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.4,
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding/2,
        bottom: kDefaultPadding*2.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: '$country'.toUpperCase(),
                          style: TextStyle(
                            color:kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),

                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


}