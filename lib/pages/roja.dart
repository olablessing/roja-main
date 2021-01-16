import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roja/theme/colors.dart';

class RojaApp extends StatefulWidget {
  @override
  _RojaAppState createState() => _RojaAppState();
}

class _RojaAppState extends State<RojaApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: black,
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getFooter() {
    List bottomItems = [
      Icon(
        Icons.home_filled,
        color: Colors.black,
        size: 38.0,
        semanticLabel: 'home button',
      ),
      Icon(
        Icons.search,
        color: Colors.black,
        size: 38.0,
        semanticLabel: 'home button',
      ),
      Icon(
        Icons.add_box,
        color: Colors.black,
        size: 38.0,
        semanticLabel: 'home button',
        //add_circle_outline
      ),
      Icon(
        Icons.add_shopping_cart,
        color: Colors.black,
        size: 38.0,
        semanticLabel: 'home button',
      ),
      Icon(
        Icons.person,
        color: Colors.black,
        size: 38.0,
        semanticLabel: 'home button',
      )
      //assets/images/.....svg
    ];
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(color: appFooterColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return InkWell(
              onTap: selectedTab(index),
              child: bottomItems[index],
              //for using svg SvgPicture.asset(bottomItem[index]),
            );
          }),
        ),
      ),
    );
  }
 selectedTab(index){
    
 }

}
