import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var date =DateFormat.yMMMMEEEEd().format(now);
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double screenRatio = screenWidth / screenHeight;
    return Scaffold(
      backgroundColor: Color(0xff0d0d0d),
      appBar: AppBar(
        backgroundColor: Color(0xff0d0d0d),
        centerTitle: true,
        leading:ClipOval(
          child: CachedNetworkImage(
            imageUrl: 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',
            fit: BoxFit.cover,
            height: screenWidth*0.2,
            width: screenWidth*0.2,

          ),
        ) ,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(date.toString(),style: TextStyle(color: Colors.white,fontSize: screenWidth*0.04),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_outlined,color: Color(0xff5b5b5b),),
                SizedBox(width: 10,),
                Text("Lomé;TOGO",style: TextStyle(color: Color(0xff5b5b5b),fontSize: screenWidth*0.04),),
              ],
            ),
          ],
        ),
        actions: [
          Container(
              height: screenWidth*0.2,
              width: screenWidth*0.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xff5b5b5b))
            ),
              child: Icon(Icons.notifications_none,color: Colors.white,)
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Find a flight",style: TextStyle(color: Colors.white,fontSize: screenWidth*0.07),),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff202020),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("From",style: TextStyle(color: Color(0xff5b5b5b),fontSize: screenWidth*0.035),),
                              Text("Lomé,TOGO",style: TextStyle(color: Colors.white,fontSize: screenWidth*0.04),),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 1,
                            width: screenWidth*0.7,
                            child: Divider(
                              color: Color(0xff5b5b5b),
                              thickness: 1,
                              endIndent: 20,
                            ),
                          ),
                          Container(
                            height: screenWidth*0.13,
                            width: screenWidth*0.13,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            ),
                            child: Icon(CupertinoIcons.arrow_up_arrow_down,color:Colors.black,),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("To",style: TextStyle(color: Color(0xff5b5b5b),fontSize: screenWidth*0.035),),
                              Text("New York,United States",style: TextStyle(color: Colors.white,fontSize: screenWidth*0.04),),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xff202020)
                      ),
                      child: Column(
                        children: [
                          Text("Departure",style: TextStyle(color:Color(0xff5b5b5b),fontSize: screenWidth*0.04),),
                          Text("Dec 24",style: TextStyle(color:Colors.white,fontSize: screenWidth*0.04))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xff202020)
                      ),
                      child: Column(
                        children: [
                          Text("Return",style: TextStyle(color:Color(0xff5b5b5b),fontSize: screenWidth*0.04),),
                          Text("Janv 14",style: TextStyle(color:Colors.white,fontSize: screenWidth*0.04))
                        ],
                      ),
                    ),Container(
                      padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xff202020)
                      ),
                      child: Column(
                        children: [
                          Text("Passenger",style: TextStyle(color:Color(0xff5b5b5b),fontSize: screenWidth*0.04),),
                          Text("2",style: TextStyle(color:Colors.white,fontSize: screenWidth*0.04))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xff7141f6)
                ),
                child: Center(child: Text("Search",style: TextStyle(color:Colors.white,fontSize: screenWidth*0.05))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Text("Last routes",style: TextStyle(color: Colors.white,fontSize: screenWidth*0.065),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      4, (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                    children: [
                        ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: CachedNetworkImage(
                              imageUrl: index==0?'https://www.tourmag.com/photo/art/grande/67984859-47943899.jpg?v=1665757294':index==1?'https://images.ctfassets.net/rc3dlxapnu6k/4lie0LcrcmBgXd1DTs3BD8/ad8ccf24bff67369c5b9c5e8e8ac67d5/iStock-598959570.jpg?w=1923&h=1082&fl=progressive&q=50&fm=jpg':index==2?'https://images.ctfassets.net/bth3mlrehms2/2uUeasgCqoENadzrwrVGuS/794ded10ca9fdaaead97c9f099f1b9a4/iStock-482761983.jpg?w=1254&h=836&fl=progressive&q=50&fm=jpg':'https://www.visittheusa.fr/sites/default/files/styles/hero_l/public/images/hero_media_image/2017-03/Hero7_RomareBeardenPark_Charlotte_GettyImages-509290226_Web72DPI.jpg?h=03233fab&itok=p_cHaBfC',
                            width: screenWidth*0.8,
                            height: screenWidth*0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      Container(
                        width: screenWidth*0.8,
                        height: screenWidth*0.4,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3)
                        ),
                      ),
                      Container(
                        width: screenWidth*0.8,
                        height: screenWidth*0.4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.2),
                                            shape: BoxShape.circle
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle
                                          ),
                                            child: Icon(Icons.label,color: Colors.black,size: screenWidth*0.06,)
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text("Easy flight",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: screenWidth*0.04)),
                                          Text("15.07.2023",style: TextStyle(color:Colors.white.withOpacity(0.7),fontSize: screenWidth*0.04)),
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      color: Color(0xffd7f15f)
                                    ),
                                    child: Text(
                                      "\$300",style: TextStyle(fontSize: screenWidth*0.05),
                                    ),
                                  )
                                ],
                              )
                              ,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("10:20 AM",style: TextStyle(fontSize: screenWidth*0.04,color: Colors.white70),),
                                      Text("OSL",style: TextStyle(fontSize: screenWidth*0.06,color: Colors.white,fontWeight: FontWeight.bold),),
                                      Text("Oslo,Norway",style: TextStyle(fontSize: screenWidth*0.04,color: Colors.white70)),
                                    ],
                                  ),
                                  ClipOval(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10),
                                      child: Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white.withOpacity(0.2)
                                        ),
                                          child: Icon(MdiIcons.airplane,color: Colors.white,size: screenWidth*0.1,)
                                      ),
                                    ),
                                  )
                                  ,
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("17:00 PM",style: TextStyle(fontSize: screenWidth*0.04,color: Colors.white70),),
                                      Text("VIE",style: TextStyle(fontSize: screenWidth*0.06,color: Colors.white,fontWeight: FontWeight.bold),),
                                      Text("Vienna,Australia",style: TextStyle(fontSize: screenWidth*0.04,color: Colors.white70)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                      )
                  ),
                ),
              ),
              Text("Best places",style: TextStyle(color: Colors.white,fontSize: screenWidth*0.06),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      4, (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                    height: screenWidth*0.5,
                    width: screenWidth*0.45,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(20))
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                  child: CachedNetworkImage(imageUrl:  index==0?'https://www.femmexpat.com/wp-content/uploads/2023/04/togo-fxp.jpg':index==1?'https://www.visittheusa.com/sites/default/files/styles/hero_l/public/images/hero_media_image/2017-04/7010d1e88b80578f3d4e6fc09c2a2379.jpeg?h=84c61102&itok=7s_epXAP':index==2?'https://images.ctfassets.net/rc3dlxapnu6k/4nAWhs8soRNUVA7dUJyKqv/967040567e240dfa9a1ad253e81f31f5/Kanada__Rocky_Mountains__Moraine_Lake.jpg?w=2124&h=1194&fl=progressive&q=50&fm=jpg':'https://images.squarespace-cdn.com/content/v1/5fa57aacf5b0a90a76b0d7cc/1627104357375-DZY3XZOB5CW5QPK3SRY7/becoming-carmen-travel-france-normandy-rouen-le-gros-horloge-morning-sunrise',fit: BoxFit.cover,)
                              ),
                  ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CountryFlag.fromCountryCode(
                                    index==0?'TG':index==1?'US':index==2?'CA':'FR',
                                    height: screenWidth*0.05,
                                    width: screenWidth*0.07,
                                    borderRadius: 8,
                                  ),
                                  SizedBox(width: 10,),
                                  Text( index==0?'TOGG':index==1?'USA':index==2?'CANADA':'FRANCE',style: TextStyle(color: Colors.black,fontSize: screenWidth*0.05),)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight*0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}

