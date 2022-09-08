import 'package:flutter/material.dart';
import 'package:noor_e_umrah/utils/app_style.dart';
import 'package:noor_e_umrah/utils/string_manager.dart';
import 'package:noor_e_umrah/widgets/video.dart';

class MyHaj extends StatefulWidget {
  const MyHaj({Key? key}) : super(key: key);

  @override
  State<MyHaj> createState() => _MyHajState();
}

class _MyHajState extends State<MyHaj> {
  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppStyle.primaryDark,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: StringManager.haj,
              ),
              Tab(
                text: StringManager.umrah,
              ),
              Tab(
                text: StringManager.madina,
              ),
            ],
          ),
          centerTitle: true,
          title: const Text(StringManager.hajUmrahAndMadina),
        ),
        body: const TabBarView(
          children: [
            VideoPlayerApp(),
            // VideoPlayerCustom(),
            // VideoApp(),
            // Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}
