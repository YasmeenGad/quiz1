import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

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
                Image.asset("assets/images/girl.png"),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Jade",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000)),
                    ),
                    Text(
                      "Ready to workout?",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000)),
                    ),
                  ],
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
            Container(
              padding: EdgeInsets.all(24),
              width: 326,
              decoration: BoxDecoration(
                  color: Color(0xFFF8F9FC),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_outline,
                            color: Color(0xFF717BBC),
                            size: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Heart Rate",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF000000)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "81BPM",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  VerticalDivider(
                    thickness: 3,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.list,
                            color: Color(0xFF717BBC),
                            size: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "to-do",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF000000)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "32.5%",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  VerticalDivider(
                    thickness: 3,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.list,
                            color: Color(0xFF717BBC),
                            size: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Calo",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF000000)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "1000 Cal",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Workout Programs",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000)),
            ),
            SizedBox(
              height: 24,
            ),
            TabBar(
              indicatorColor: Color(0xFF363F72),
              tabs: [
                Tab(
                  child: Text(
                    "All Type",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF363F72)),
                  ),
                ),
                Tab(
                  child: Text(
                    "Full Body",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF363F72)),
                  ),
                ),
                Tab(
                  child: Text(
                    "Upper",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF363F72)),
                  ),
                ),
                Tab(
                  child: Text(
                    "Lower",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF363F72)),
                  ),
                ),
              ],
              controller: _tabController,
            ),
            SizedBox(
              height: 400,
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/morning_yoga.png"),
                      SizedBox(
                        height: 16,
                      ),
                      Image.asset("assets/images/exercise.png"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/morning_yoga.png"),
                      SizedBox(
                        height: 16,
                      ),
                      Image.asset("assets/images/exercise.png"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/morning_yoga.png"),
                      SizedBox(
                        height: 16,
                      ),
                      Image.asset("assets/images/exercise.png"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/morning_yoga.png"),
                      SizedBox(
                        height: 16,
                      ),
                      Image.asset("assets/images/exercise.png"),
                    ],
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
