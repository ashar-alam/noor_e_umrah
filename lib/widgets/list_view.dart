import 'package:flutter/material.dart';
import 'package:noor_e_umrah/utils/app_style.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);
  // List surah = ["hello", "hey", "world"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: const Icon(Icons.format_list_numbered),
          trailing: TextButton(
            onPressed: () {},
            child: const Text(
              "hello",
              style: TextStyle(color: Colors.green, fontSize: 15),
            ),
          ),
          title: TextButton(
            onPressed: () {},
            child: Text(
              "List item $index",
              style: const TextStyle(color: AppStyle.primaryColor),
            ),
          ),
        );
      },
    );
    // itemCount: surah.length,
    // itemBuilder: (context, index) {
    //   return ListTile(
    //     title: Text(surah[index]),
    //   );
    // },
    // );
  }
}
