import 'package:flutter/material.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: const Text("Page 5"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Text(
            "Dart Book",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Mixin",
            style: TextStyle(
              fontFamily: "Palypen Sans",
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            "Miksinlar Dartning qiziqarli xususiyati bo'lib, siz boshqa dasturlash tillarini bilsangiz ham, sizga tanish bo'lmasligi mumkin. Ular boshqa bog'liq bo'lmagan sinflar orasida usullar yoki o'zgaruvchilarni qayta ishlatishning bir usuli",
            style: TextStyle(fontFamily: "PlaypenSans"),
          ),
        ],
      ),
    );
  }
}
