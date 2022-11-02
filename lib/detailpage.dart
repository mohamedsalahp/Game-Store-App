import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SlidingUpPanel(
          maxHeight: height,
          minHeight: height / 1.8,
          body: Container(
            height: height / 2,
            width: width,
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                Image(
                  image: NetworkImage("https://cdn.mos.cms.futurecdn.net/vcmoeoABinGGwxbfpkTg8e.jpg"),
                  fit: BoxFit.cover,
                  height: height / 2,
                  width: width,
                ),
                Positioned(
                    top: 9.0,
                    child: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_left_sharp,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.of(context).pop(true)))
              ],
            ),
          ),
          borderRadius: BorderRadius.circular(60.0),
          color: Colors.grey[100],
          panel: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Welcome To Epic Store",
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.w100,color: Colors.indigo[500]),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("9.1",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w100)),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 23.0,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 3.0, 20.0, 10.0),
                child: Text(
                  "America - 4.9km - \$-\$\$",
                  style: TextStyle(color: Colors.black, fontSize: 15.0),
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 5.0),
                height: 40.0,
                width: width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    menu(Colors.indigo[400], "Action", "assets/images/action.png",
                        Colors.white),
                    menu(Colors.grey[350], "Adventure", "assets/images/borderlands.png",
                        Colors.black),
                    menu(Colors.grey[350], "Sports", "assets/images/sports.png",
                        Colors.black),
                    menu(Colors.grey[350], "Strategy", "assets/images/star.png",
                        Colors.black)
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                child: Column(
                  children: [
                    menuItemtab("assets/images/death.jpg", "Death Stranding",
                        "Action Adventure", "60.0"),
                    menuItemtab("assets/images/needforspeed.jpg", "Need for speed Heat",
                        "Speed, Races", "40.9"),
                    menuItemtab("assets/images/ACunity.jpg", "Assassin's Creed Unity",
                        "Action", "30.6"),
                    menuItemtab("assets/images/callofduty.jpg", "Call Of Duty WWII",
                        "War", "50.0"),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget menuItemtab(
      String pizzaImage, String pizza, String ingredients, String price) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.only(top: 19.0),
      child: Container(
        height: 100.0,
        width: width - 40.0,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Container(
                padding: EdgeInsets.only(left: 70.0, right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                height: 100.0,
                width: width - 60.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pizza,
                          style: TextStyle(fontSize: 17.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          ingredients,
                          style: TextStyle(color: Colors.indigo[700]),
                        )
                      ],
                    ),
                    Text(
                      "\$$price",
                      style: TextStyle(color: Colors.indigo[700], fontSize: 17.0),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                left: 0.0,
                child: Image(
                  image: AssetImage(pizzaImage),
                  height: 100.0,
                  width: 100.0,
                ))
          ],
        ),
      ),
    );
  }

  Widget menu(Color colore, String menu, String menuImage, Color menuColor) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0),
      child: Container(
        alignment: Alignment.center,
        height: 40.0,
        width: 100.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: colore),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(menuImage),
              height: 20.0,
              width: 20.0,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(menu, style: TextStyle(color: menuColor, fontSize: 14.0))
          ],
        ),
      ),
    );
  }
}
