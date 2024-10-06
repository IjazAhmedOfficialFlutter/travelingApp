import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:travel_app_ui/screens/post_screen.dart';
import 'package:travel_app_ui/utils/appbar.dart';

import '../utils/bottom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var category = [
    "Best Places",
    "Most Visited",
    "Favorites",
    "New Added",
    "Hotels",
    "Restaurant"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(90), child: HomeAppBar()),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200, // Set a fixed height for the container
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        width: 160,
                        height: 200,
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage("lib/assets/city${index + 1}.jpg"),
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: const Icon(
                                Icons.bookmark_add_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: const Text(
                                "City Name",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      for (int i = 0; i < category.length; i++)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.black26, blurRadius: 5)
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            category[i],
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              buildListView()
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarApp(),
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostScreen(),
                      ));
                },
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("lib/assets/city${index + 1}.jpg"),
                      ),
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "City Name",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text("4.5")
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
