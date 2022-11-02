import 'dart:ui';
import 'package:firstapp/detailpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: ListView(
          children: [
            SizedBox(
              height: 10.0,
            ),
            //making the location and the cart
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        "Los Angeles, California",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                  Container(
                    height: 55.0,
                    width: 55.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border:
                            Border.all(color: Colors.indigo[200], width: 2.0)),
                    child: Icon(Icons.add_shopping_cart_sharp),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 30.0,
            ),
//
// Container for the info for 10 min delivery
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19.0),
                  color: Colors.indigo[200]
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: width / 20),
                      height: 150.0,
                      width: width / 2.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hurry up, pick your game now.. ;)",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: width / 30,
                          ),
                        ],
                      ),
                    ),

                    // here comes the image
                    Container(
                      height: 150.0,
                      width: width / 2.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/games.webp"))),
                    )
                  ],
                ),
              ),
            ),
            // Container ends here
            SizedBox(
              height: 10.0,
            ),

            Padding(
              padding: EdgeInsets.all(
                20.0,
              ),
              child: Text("Coming soon..",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  )),
            ),
            Container(
              height: 180.0,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child:
                        pizzaTabs("Cyberpunk 2077", "34", "assets/images/cyber.png"),
                  ),
                  pizzaTabs("AC Valhalla", "24", "assets/images/ac.png"),
                  pizzaTabs("Mafia: Remake", "21", "assets/images/mafia.jpg")
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            // new tab for the restaurant...................
            Padding(
              padding: EdgeInsets.all(
                20.0,
              ),
              child: Row(
                children: [
                  Text("Games Store In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      )),
                  Text(" Los Angeles, California",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color:Colors.indigo[300] ))
                ],
              ),
            ),
            // its container............

            Container(
              //color: Colors.red,
              height: 230.0,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: restaurantsTabs("https://cdn1.vectorstock.com/i/1000x1000/98/90/games-store-logo-icon-design-template-game-shop-vector-23329890.jpg",
                          "Games Shop", "England", "4.9km")),
                  restaurantsTabs(
                      "https://cdn.mos.cms.futurecdn.net/h7US39FZ6QCPasGX2T9rGN.jpg", "Epic Games", "America", "3.2km"),
                  restaurantsTabs("https://i.ytimg.com/vi/r2Lq3I8JECY/maxresdefault.jpg", "GoG Galaxy",
                      "Egypt", "1.5km"),
                ],
              ),
            ),
            Container(
              //color: Colors.red,
              height: 210.0,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: restaurantsTabs("https://images.techhive.com/images/article/2013/08/origin-logo-100050697-large.jpg",
                          "Origin", "Italy", "5.9km")),
                  restaurantsTabs(
                      "https://ubistatic-a.akamaihd.net/0123/PROD/_next/static/images/share-image-8b80c2cc6affda35197fc9715b3a650c.png", "Uplay", "America", "8.2km"),
                  restaurantsTabs("https://steamcdn-a.akamaihd.net/store/about/social-og.jpg", "Steam",
                      "Egypt", "9.5km"),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_sharp,
              color: Colors.indigo[400],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.circle,
                color: Colors.grey[400],
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey[400],
              ),
              label: ""),
        ],
      ),
    );
  }

  Widget restaurantsTabs(
    String address,
    String name,
    String dish,
    String distance,
  ) {
    double Width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DetailPage())),
          child: Container(
            width: Width / 2.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120.0,
                  width: Width / 2.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: NetworkImage(address), fit: BoxFit.cover)),
                ),
                // .............name of the dish............
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "$dish - $distance - \$-10",
                  style: TextStyle(
                    //  color: Color.fromARGB(212, 218, 90, 1),
                    color: Colors.indigo[400],
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ));
  }

  // ........same as the pizzatabs......

  Widget pizzaTabs(String title, String no, String assetimage) {
    double Width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Container(
        height: 170.0,
        width: Width / 3.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.0),
          color: Colors.indigo[200],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Image(
              image: AssetImage(assetimage),
              height: 80.0,
              width: 80.0,
            )
          ],
        ),
      ),
    );
  }
}

// .......:)the first page is complete(:........
