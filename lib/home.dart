import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quiz1/models.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List<Models> models = [
    Models(image: "assets/images/love.png", name: "Love"),
    Models(image: "assets/images/cool.png", name: "Cool"),
    Models(image: "assets/images/happy.png", name: "Happy"),
    Models(image: "assets/images/sad.png", name: "Sad"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("assets/images/logo.png"),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Moody",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000000)),
                ),
                Spacer(),
                Badge(
                  child: Icon(Icons.notifications),
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Sara Rose",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "How are you feeling now",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
                height: 100,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: models.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("${models[index].image}"),
                          ),
                          Text("${models[index].name}")
                        ],
                      );
                    })),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Text(
                  "Feature",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000)),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF027A48)),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Color(0xFF027A48), size: 18),
                  ],
                )
              ],
            ),
            CarouselSlider(
              items: [
                Container(
                  child: Image.asset(
                    "assets/images/slider.png",
                    width: 326,
                    height: 168,
                  ),
                ),
                Container(
                  child: Image.asset(
                    "assets/images/slider.png",
                    width: 326,
                    height: 168,
                  ),
                ),
              ],
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Text(
                  "Exercise",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000)),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF027A48)),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Color(0xFF027A48), size: 18),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Container(
                  width: 151,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Color(0xFFF9F5FF),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(children: [
                    ImageIcon(
                      AssetImage("assets/images/relax.png"),
                      color: Color(0xFFB692F6),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Relaxation",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ]),
                ),
                Spacer(),
                Container(
                  width: 151,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Color(0xFFF9F5FF),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(children: [
                    ImageIcon(
                      AssetImage("assets/images/medi.png"),
                      color: Color(0xFFFAA7E0),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Mediatation",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ]),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 151,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Color(0xFFF9F5FF),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(children: [
                    ImageIcon(
                      AssetImage("assets/images/beath.png"),
                      color: Color(0xFFFEB273),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Beathing",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ]),
                ),
                Spacer(),
                Container(
                  width: 151,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Color(0xFFF9F5FF),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(children: [
                    ImageIcon(
                      AssetImage("assets/images/yoga.png"),
                      color: Color(0xFF7CD4FD),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Yoga",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ]),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
