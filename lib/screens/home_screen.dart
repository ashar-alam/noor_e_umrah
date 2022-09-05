import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:noor_e_umrah/utils/app_style.dart';
import 'package:noor_e_umrah/utils/string_manager.dart';

import '../utils/utils.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              AppStyle.primaryDark,
              AppStyle.primaryColor,
              AppStyle.primaryLight,
            ]),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: Utils.getHight(context) / 40,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      verticalDirection: VerticalDirection.up,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.location_on,
                            color: AppStyle.white,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          StringManager.newDelhi,
                          style: TextStyle(color: AppStyle.white, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 180,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: AppStyle.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // TextField(
                    //   decoration: InputDecoration(
                    //       filled: true,
                    //       hintText: "Search here",
                    //       border: const OutlineInputBorder(
                    //         borderRadius: BorderRadius.all(Radius.circular(30)),
                    //       ),
                    //       prefixIcon: IconButton(
                    //         onPressed: () {},
                    //         icon: const Icon(Icons.search),
                    //       ),
                    //       fillColor: AppStyle.white,
                    //       focusColor: AppStyle.white),
                    // ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        // margin: const EdgeInsets.all(8),
                        color: AppStyle.lightGrey,
                        shadowColor: AppStyle.primaryLight,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                StringManager.collection,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    // padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AppStyle.primaryLight,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.auto_stories,
                                        size: 30,
                                        color: AppStyle.primaryDark,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AppStyle.primaryLight,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.menu_book,
                                        size: 30,
                                        color: AppStyle.primaryDark,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AppStyle.primaryLight,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.volunteer_activism,
                                        size: 30,
                                        color: AppStyle.primaryDark,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AppStyle.primaryLight,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.front_hand,
                                        size: 30,
                                        color: AppStyle.primaryDark,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    StringManager.quran,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    StringManager.hadees,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    StringManager.dua,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    StringManager.tasbih,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    // padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AppStyle.primaryLight,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.star_border,
                                        size: 30,
                                        color: AppStyle.primaryDark,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AppStyle.primaryLight,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.schedule,
                                        size: 30,
                                        color: AppStyle.primaryDark,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AppStyle.primaryLight,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.explore,
                                        size: 30,
                                        color: AppStyle.primaryDark,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AppStyle.primaryLight,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.grid_view,
                                        size: 30,
                                        color: AppStyle.primaryDark,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    StringManager.namesOfAllah,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    StringManager.prayerTimes,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    StringManager.qabahDirection,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    StringManager.hajAndUmrah,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        color: AppStyle.lightGrey,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                StringManager.hajAndUmrahPackage,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CachedNetworkImage(
                                    height: 40,
                                    width: 60,
                                    imageUrl:
                                        "https://i.pinimg.com/236x/32/0b/48/320b485fcbf9ab8dd6069682b70d4e9d.jpg",
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover,
                                          colorFilter: const ColorFilter.mode(
                                              Colors.red, BlendMode.colorBurn),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    StringManager.deluxPackage,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.visibility_rounded,
                                      size: 30,
                                      color: AppStyle.primaryDark,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CachedNetworkImage(
                                    height: 40,
                                    width: 60,
                                    imageUrl:
                                        "https://i.pinimg.com/236x/32/0b/48/320b485fcbf9ab8dd6069682b70d4e9d.jpg",
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover,
                                          colorFilter: const ColorFilter.mode(
                                              Colors.red, BlendMode.colorBurn),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    StringManager.deluxPackage,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.visibility_rounded,
                                      size: 30,
                                      color: AppStyle.primaryDark,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        // margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: AppStyle.lightGrey,
                          border: Border.all(color: AppStyle.black, width: 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  StringManager.deluxPackage,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(StringManager.learnMore),
                                ),
                              ],
                            ),
                            
                            // const Text(
                            //   StringManager.loremSpem,
                            //   style: TextStyle(
                            //       fontSize: 20, fontWeight: FontWeight.bold),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
