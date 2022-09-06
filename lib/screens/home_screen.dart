import 'package:flutter/material.dart';
import 'package:noor_e_umrah/utils/app_style.dart';
import 'package:noor_e_umrah/utils/string_manager.dart';
import 'package:noor_e_umrah/widgets/icon_button.dart';
import 'package:noor_e_umrah/widgets/image_builder.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: Utils.getHight(context) / 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
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
                              size: 25,
                              color: AppStyle.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            StringManager.newDelhi,
                            style:
                                TextStyle(color: AppStyle.white, fontSize: 18),
                          ),
                          const SizedBox(
                            width: 135,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications,
                              size: 30,
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
                      // Card(
                      //   shape: const RoundedRectangleBorder(
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(20.0))),
                      //   // margin: const EdgeInsets.all(8),
                      //   color: AppStyle.lightGrey,
                      //   shadowColor: AppStyle.primaryLight,
                      //   elevation: 2,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(15.0),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         const Text(
                      //           StringManager.collection,
                      //           style: TextStyle(
                      //               fontSize: 20, fontWeight: FontWeight.bold),
                      //         ),
                      //         const SizedBox(
                      //           height: 20,
                      //         ),
                      //         Row(
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             Container(
                      //               // padding: const EdgeInsets.all(8.0),
                      //               decoration: BoxDecoration(
                      //                 shape: BoxShape.circle,
                      //                 border: Border.all(
                      //                   width: 1,
                      //                   color: AppStyle.primaryLight,
                      //                 ),
                      //               ),
                      //               child: IconButton(
                      //                 onPressed: () {},
                      //                 icon: const Icon(
                      //                   Icons.auto_stories,
                      //                   size: 30,
                      //                   color: AppStyle.primaryDark,
                      //                 ),
                      //               ),
                      //             ),
                      //             Container(
                      //               // padding: const EdgeInsets.all(8.0),
                      //               decoration: BoxDecoration(
                      //                 shape: BoxShape.circle,
                      //                 border: Border.all(
                      //                   width: 1,
                      //                   color: AppStyle.primaryLight,
                      //                 ),
                      //               ),
                      //               child: IconButton(
                      //                 onPressed: () {},
                      //                 icon: const Icon(
                      //                   Icons.menu_book,
                      //                   size: 30,
                      //                   color: AppStyle.primaryDark,
                      //                 ),
                      //               ),
                      //             ),
                      //             Container(
                      //               // padding: const EdgeInsets.all(8.0),
                      //               decoration: BoxDecoration(
                      //                 shape: BoxShape.circle,
                      //                 border: Border.all(
                      //                   width: 1,
                      //                   color: AppStyle.primaryLight,
                      //                 ),
                      //               ),
                      //               child: IconButton(
                      //                 onPressed: () {},
                      //                 icon: const Icon(
                      //                   Icons.volunteer_activism,
                      //                   size: 30,
                      //                   color: AppStyle.primaryDark,
                      //                 ),
                      //               ),
                      //             ),
                      //             Container(
                      //               // padding: const EdgeInsets.all(8.0),
                      //               decoration: BoxDecoration(
                      //                 shape: BoxShape.circle,
                      //                 border: Border.all(
                      //                   width: 1,
                      //                   color: AppStyle.primaryLight,
                      //                 ),
                      //               ),
                      //               child: IconButton(
                      //                 onPressed: () {},
                      //                 icon: const Icon(
                      //                   Icons.front_hand,
                      //                   size: 30,
                      //                   color: AppStyle.primaryDark,
                      //                 ),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //         const SizedBox(
                      //           height: 10,
                      //         ),
                      //         Row(
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceBetween,
                      //           children: const [
                      //             Text(
                      //               StringManager.quran,
                      //               style: TextStyle(fontSize: 15),
                      //             ),
                      //             Text(
                      //               StringManager.hadees,
                      //               style: TextStyle(fontSize: 15),
                      //             ),
                      //             Text(
                      //               StringManager.dua,
                      //               style: TextStyle(fontSize: 15),
                      //             ),
                      //             Text(
                      //               StringManager.tasbih,
                      //               style: TextStyle(fontSize: 15),
                      //             ),
                      //           ],
                      //         ),
                      //         const SizedBox(
                      //           height: 20,
                      //         ),
                      //         Row(
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             Container(
                      //               // padding: const EdgeInsets.all(8.0),
                      //               decoration: BoxDecoration(
                      //                 shape: BoxShape.circle,
                      //                 border: Border.all(
                      //                   width: 1,
                      //                   color: AppStyle.primaryLight,
                      //                 ),
                      //               ),
                      //               child: IconButton(
                      //                 onPressed: () {},
                      //                 icon: const Icon(
                      //                   Icons.star_border,
                      //                   size: 30,
                      //                   color: AppStyle.primaryDark,
                      //                 ),
                      //               ),
                      //             ),
                      //             Container(
                      //               // padding: const EdgeInsets.all(5.0),
                      //               decoration: BoxDecoration(
                      //                 shape: BoxShape.circle,
                      //                 border: Border.all(
                      //                   width: 1,
                      //                   color: AppStyle.primaryLight,
                      //                 ),
                      //               ),
                      //               child: IconButton(
                      //                 onPressed: () {},
                      //                 icon: const Icon(
                      //                   Icons.schedule,
                      //                   size: 30,
                      //                   color: AppStyle.primaryDark,
                      //                 ),
                      //               ),
                      //             ),
                      //             Container(
                      //               // padding: const EdgeInsets.all(8.0),
                      //               decoration: BoxDecoration(
                      //                 shape: BoxShape.circle,
                      //                 border: Border.all(
                      //                   width: 1,
                      //                   color: AppStyle.primaryLight,
                      //                 ),
                      //               ),
                      //               child: IconButton(
                      //                 onPressed: () {},
                      //                 icon: const Icon(
                      //                   Icons.explore,
                      //                   size: 30,
                      //                   color: AppStyle.primaryDark,
                      //                 ),
                      //               ),
                      //             ),
                      //             Container(
                      //               // padding: const EdgeInsets.all(8.0),
                      //               decoration: BoxDecoration(
                      //                 shape: BoxShape.circle,
                      //                 border: Border.all(
                      //                   width: 1,
                      //                   color: AppStyle.primaryLight,
                      //                 ),
                      //               ),
                      //               child: IconButton(
                      //                 onPressed: () {},
                      //                 icon: const Icon(
                      //                   Icons.grid_view,
                      //                   size: 30,
                      //                   color: AppStyle.primaryDark,
                      //                 ),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //         const SizedBox(
                      //           height: 10,
                      //         ),
                      //         Row(
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceBetween,
                      //           children: const [
                      //             Text(
                      //               StringManager.namesOfAllah,
                      //               style: TextStyle(fontSize: 15),
                      //             ),
                      //             Text(
                      //               StringManager.prayerTimes,
                      //               style: TextStyle(fontSize: 15),
                      //             ),
                      //             Text(
                      //               StringManager.qabahDirection,
                      //               style: TextStyle(fontSize: 15),
                      //             ),
                      //             Text(
                      //               StringManager.hajAndUmrah,
                      //               style: TextStyle(fontSize: 15),
                      //             ),
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 250,
                        width: 400,
                        // padding: const EdgeInsets.all(10),
                        // decoration: BoxDecoration(
                        //   color: AppStyle.lightGrey,
                        //   border:
                        //       Border.all(color: AppStyle.black, width: 0.05),
                        //   borderRadius: BorderRadius.circular(10),
                        // ),
                        child: Center(
                          child: GridView.count(
                            // padding: const EdgeInsets.all(4),
                            shrinkWrap: true,
                            crossAxisCount: 4,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                            children: [
                              MyIconButton(
                                icon: Icons.auto_stories,
                                title: StringManager.quran,
                              ),
                              MyIconButton(
                                icon: Icons.menu_book,
                                title: StringManager.hadees,
                              ),
                              MyIconButton(
                                icon: Icons.volunteer_activism,
                                title: StringManager.dua,
                              ),
                              MyIconButton(
                                icon: Icons.front_hand,
                                title: StringManager.tasbih,
                              ),
                              MyIconButton(
                                icon: Icons.grade,
                                title: StringManager.namesOfAllah,
                              ),
                              MyIconButton(
                                icon: Icons.schedule,
                                title: StringManager.prayerTimes,
                              ),
                              MyIconButton(
                                icon: Icons.explore,
                                title: StringManager.qabahDirection,
                              ),
                              MyIconButton(
                                icon: Icons.grid_view,
                                title: StringManager.hajAndUmrah,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(thickness: 2.0),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  StringManager.hajAndUmrahPackage,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(StringManager.learnMore),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyImage(
                                  imageUrl:
                                      "https://i.pinimg.com/236x/32/0b/48/320b485fcbf9ab8dd6069682b70d4e9d.jpg",
                                ),
                                const Text(
                                  StringManager.deluxPackage,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.visibility_rounded,
                                    size: 25,
                                    color: AppStyle.primaryDark,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyImage(
                                  imageUrl:
                                      "https://i.pinimg.com/236x/32/0b/48/320b485fcbf9ab8dd6069682b70d4e9d.jpg",
                                ),
                                const Text(
                                  StringManager.deluxPackage,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.visibility_rounded,
                                    size: 25,
                                    color: AppStyle.primaryDark,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                StringManager.deluxPackage,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
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
