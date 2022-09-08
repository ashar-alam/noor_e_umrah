import 'package:flutter/material.dart';

import '../../utils/app_style.dart';
import '../../utils/utils.dart';

class MySetting extends StatefulWidget {
  const MySetting({Key? key}) : super(key: key);

  @override
  State<MySetting> createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            width: Utils.getWidth(context) / 1.1,
            height: Utils.getHight(context) / 1.5,
            decoration: BoxDecoration(
              color: AppStyle.lightGrey,
              border: Border.all(color: AppStyle.black, width: 0.05),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
