import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roja/theme/colors.dart';
import 'package:roja/screens/home_page.dart';
import 'package:roja/screens/search_page.dart';
import '../widgets/post_item.dart';
import 'package:roja/screens/feed_screen.dart';

class RojaApp extends StatefulWidget {
  @override
  _RojaAppState createState() => _RojaAppState();
}

class _RojaAppState extends State<RojaApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      // backgroundColor: black,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
    FeedScreen(),
      SearchPage(),
      Center(
        child: Text(
          "Upload Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: white),
        ),
      ),
      Center(
        child: Text(
          "Activity Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: white),
        ),
      ),
      Center(
        child: Text(
          "Account Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: white),
        ),
      )
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getAppBar() {
    if (pageIndex == 0) {
      return AppBar(
        backgroundColor: appBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 30.0,
              semanticLabel: 'home button',
            ),
            Text(
              "Feed",
              style: TextStyle(
                  fontFamily: 'NunitoSan',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 30.0,
              semanticLabel: 'home button',
            ),
            Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 30.0,
              semanticLabel: 'home button',
            ),
          ],
        ),
      );
    } else if (pageIndex == 1) {
      return null;
    } else if (pageIndex == 2) {
      return AppBar(
        // backgroundColor: appBarColor,
        title: Text('Upload'),
      );
    } else if (pageIndex == 3) {
      return AppBar(
        // backgroundColor: appBarColor,
        title: Text('Cart'),
      );
    } else {
      return AppBar(
        // backgroundColor: appBarColor,
        title: Text('Profile'),
      );
    }
  }

  Widget getFooter() {
    List bottomItems = [
      pageIndex == 0
          ? Icon(
             Icons.dashboard,
                size: 30.0,
                color: Colors.black,
              semanticLabel: 'home',
            )
          : Icon(
              Icons.dashboard_outlined,
              color: Colors.grey,
              size: 30.0,
              semanticLabel: 'home',
            ),
      pageIndex == 1
          ? Icon(
              Icons.search,
              color: Colors.black,
              size: 30.0,
              semanticLabel: 'home button',
            )
          : Icon(
              Icons.search_outlined,
              color: Colors.grey,
              size: 30.0,
              semanticLabel: 'home button',
            ),
      pageIndex == 2
          ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Color(0xFF23B66F),
                  onPressed: () => print('Upload photo'),
                  child: Icon(
                    Icons.add,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
              )
          :Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Color(0xFF23B66F),
                  onPressed: () => print('Upload photo'),
                  child: Icon(
                    Icons.add,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
              ),
      pageIndex == 3
          ? Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 30.0,
              semanticLabel: 'home button',
            )
          : Icon(
              Icons.shopping_cart_outlined,
               color: Colors.grey,
              size: 30.0,
              semanticLabel: 'home button',
            ),
      pageIndex == 4
          ? Icon(
              Icons.person,
              color: Colors.black,
              size: 30.0,
              semanticLabel: 'home button',
            )
          : Icon(
              Icons.person_outline,
           color: Colors.grey,
              size: 30.0,
              semanticLabel: 'home button',
            )

      //assets/images/.....svg
    ];
    return Container(
      width: double.infinity,
      height: 80,
      
      decoration: BoxDecoration(color: appFooterColor,borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return InkWell(
              onTap: () {
                selectedTab(index);
              },
              child: bottomItems[index],
              //for using svg SvgPicture.asset(bottomItem[index]),
            );
          }),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
