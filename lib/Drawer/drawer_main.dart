import 'package:flutter/material.dart';
import 'package:iot_app/Drawer/Pages/firstpage.dart';
import 'package:iot_app/Drawer/Pages/secondpage.dart';

Drawer drawermain(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        const DrawerHeader(
          child: Center(
            child: Text(
              "TEMPERATURE",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        ListTile(
          title: const Text(
            "Page 1",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const FirstPage()));
          },
        ),
        ListTile(
          title: const Text(
            "Page 2",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SecondPage()));
          },
        ),
      ],
    ),
  );
}
