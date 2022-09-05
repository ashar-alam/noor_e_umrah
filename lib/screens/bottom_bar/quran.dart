import 'package:flutter/material.dart';
import 'package:noor_e_umrah/utils/app_style.dart';
import 'package:noor_e_umrah/utils/string_manager.dart';

class MyQuran extends StatefulWidget {
  const MyQuran({Key? key}) : super(key: key);

  @override
  State<MyQuran> createState() => _MyQuranState();
}

class _MyQuranState extends State<MyQuran> with SingleTickerProviderStateMixin {
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
        centerTitle: true,
        title: const Text(
          StringManager.myQuran,
          style: TextStyle(color: AppStyle.primaryDark),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.home_outlined,
            color: AppStyle.primaryDark,
            size: 30,
          ),
        ),
        backgroundColor: AppStyle.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppStyle.lightGrey),
              borderRadius: BorderRadius.circular(10.0)),
          child: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Creates border
                color: AppStyle.primaryColor),
            unselectedLabelColor: AppStyle.black,
            labelColor: AppStyle.white,
            labelStyle: const TextStyle(color: AppStyle.white),
            tabs: const [
              Tab(
                text: StringManager.surah,
              ),
              Tab(
                text: StringManager.para,
              ),
              // Tab(
              //   text: StringManager.history,
              // )
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
      ),
    );
  }
}
