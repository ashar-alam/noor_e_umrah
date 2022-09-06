import 'package:flutter/material.dart';

import '../utils/app_style.dart';

// ignore: must_be_immutable
class MyIconButton extends StatelessWidget {
  IconData icon;
  String title;
  MyIconButton({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Container(
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
                icon: Icon(
                  icon,
                  size: 25,
                  color: AppStyle.primaryDark,
                ),
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
