import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class MyIconButton extends StatefulWidget {
//final icondata = icon;
  
  var icon;
   MyIconButton({Key? key,required this.icon}) : super(key: key);

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
    );
  }
}
