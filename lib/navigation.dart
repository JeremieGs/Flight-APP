import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flyingappui/search.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'Home.dart';
import 'Ticket.dart';
import 'likes.dart';
class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}
class _NavigationState extends State<Navigation> {
  int selected_index=0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double screenRatio = screenWidth / screenHeight;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            _buildScreens[selected_index],
            Positioned(
              bottom: 0,
              child: Container(
                width: screenWidth,
                padding: EdgeInsets.only(bottom: 20,left: 30,right: 30),
                child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        height: screenWidth*0.2,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){setState(() {
                                selected_index=0;
                              });},
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  height: screenWidth*0.19,
                                  width:  screenWidth*0.19,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: selected_index==0?Colors.white:Colors.transparent
                                  ),
                                    child: Icon(CupertinoIcons.home,size: screenWidth*0.07, color: selected_index==0?Colors.black:Colors.white)
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){setState(() {
                                selected_index=1;
                              });},
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                    height: screenWidth*0.19,
                                    width:  screenWidth*0.19,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: selected_index==1?Colors.white:Colors.transparent
                                    ),
                                    child: Icon(CupertinoIcons.ticket,size: screenWidth*0.07, color: selected_index==1?Colors.black:Colors.white)
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){setState(() {
                                selected_index=2;
                              });},
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                    height: screenWidth*0.19,
                                    width:  screenWidth*0.19,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: selected_index==2?Colors.white:Colors.transparent
                                    ),
                                    child: Icon(CupertinoIcons.heart,size: screenWidth*0.07, color: selected_index==2?Colors.black:Colors.white)
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){setState(() {
                                selected_index=3;
                              });},
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                    height: screenWidth*0.19,
                                    width:  screenWidth*0.19,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: selected_index==3?Colors.white:Colors.transparent
                                    ),
                                    child: Icon(CupertinoIcons.search,size: screenWidth*0.07, color: selected_index==3?Colors.black:Colors.white)
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
List<Widget> _buildScreens=[
  const HomeScreen(),
  const TicketScreen(),
  const LikeScreen(),
  const SearchScreen(),
];
