import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calender extends StatelessWidget {
  Calender({super.key});
  List<String> str = [
    "Discover",
    "News",
    "Most Viewed",
    "Saved",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage("assets/images/flower.png"),
                    color: Color(0xFFC9B4FF),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "AliceCare",
                    style: GoogleFonts.milonga(
                        fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.black12)),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Text(
                      "Articles, Video, Audio and More,...",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                    itemCount: str.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                            decoration: BoxDecoration(
                                color: index == 0
                                    ? Color(0xFFD6BBFB)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 1, color: Colors.black12)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${str[index]}",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: index == 0
                                        ? Color(0xFF6941C6)
                                        : Color(0xFFD6BBFB)),
                              ),
                            )),
                      );
                    })),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    "Hot Topics",
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
                            color: Color(0xFF5925DC)),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          color: Color(0xFF5925DC), size: 18),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assets/images/im1.png",
                      width: 326,
                      height: 160,
                    ),
                    Image.asset(
                      "assets/images/im2.png",
                      width: 326,
                      height: 160,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Get Tips",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.all(24),
                width: 326,
                height: 196,
                decoration: BoxDecoration(
                    color: Color(0xFFF2F4F7),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFE4E7EC), width: 1)),
                child: Row(
                  children: [
                    Image.asset("assets/images/doctor.png"),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Connect with doctors &\n get suggestions",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Connect now and get\n expert insights",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        MaterialButton(
                          color: Color(0xFF7F56D9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          onPressed: () {},
                          child: Text(
                            "View detail",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    "Cycle Phases and Period",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF5925DC)),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          color: Color(0xFF5925DC), size: 18),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
