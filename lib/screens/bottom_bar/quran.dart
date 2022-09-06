import 'package:flutter/material.dart';
import 'package:noor_e_umrah/screens/home_screen.dart';
import 'package:noor_e_umrah/utils/app_style.dart';
import 'package:noor_e_umrah/utils/string_manager.dart';
import 'package:noor_e_umrah/widgets/list_view.dart';

import '../../utils/utils.dart';

class MyQuran extends StatefulWidget {
  const MyQuran({Key? key}) : super(key: key);

  @override
  State<MyQuran> createState() => _MyQuranState();
}

class _MyQuranState extends State<MyQuran> with SingleTickerProviderStateMixin {
  // List surah = ["hello", "hey", "world"];
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          StringManager.myQuran,
          style: TextStyle(color: AppStyle.primaryDark),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MyHomeScreen()),
            );
          },
          icon: const Icon(
            Icons.home_outlined,
            color: AppStyle.primaryDark,
            size: 30,
          ),
        ),
        backgroundColor: AppStyle.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(

              // border: Border.all(width: 1, color: AppStyle.lightGrey),
              borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TabBar(
                // indicator: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10), // Creates border
                //     color: AppStyle.primaryColor),
                // unselectedLabelStyle:
                //     const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                indicatorWeight: 3.0,
                indicatorColor: AppStyle.primaryDark,
                unselectedLabelColor: AppStyle.black,
                labelColor: AppStyle.primaryDark,
                labelStyle:
                    const TextStyle(color: AppStyle.white, fontSize: 20),
                tabs: const [
                  Tab(
                    text: StringManager.surah,
                  ),
                  Tab(
                    text: StringManager.para,
                  ),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: Utils.getWidth(context) / 1.2,
                height: Utils.getHight(context) / 16,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: "Search here",
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                        ),
                      ),
                      fillColor: AppStyle.white,
                      focusColor: AppStyle.white),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    MyListView(),
                    MyListView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
