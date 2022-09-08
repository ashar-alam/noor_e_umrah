import 'package:flutter/material.dart';
import 'package:noor_e_umrah/utils/app_style.dart';
import 'package:noor_e_umrah/utils/string_manager.dart';

import '../widgets/slider.dart';

class MyUmrahScreen extends StatefulWidget {
  const MyUmrahScreen({Key? key}) : super(key: key);

  @override
  State<MyUmrahScreen> createState() => _MyUmrahScreenState();
}

class _MyUmrahScreenState extends State<MyUmrahScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.primaryDark,
        centerTitle: true,
        title: const Text(StringManager.umrah),
      ),
      body: const MySlider(),
    );
  }
}
