import 'package:flutter/material.dart';
import 'package:flutter_hom_beginner_widgets/pages/page_five/five_page.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown,
        title: const Text("Page 4"),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Enumeration",
            style: TextStyle(
              fontFamily: "Palypen Sans",
              fontWeight: FontWeight.w900,
            ),
          ),
          const Text(
            "Ro'yxatga olingan turlar, ko'pincha enumerations yoki enums deb ataladi, doimiy qiymatlarning qat'iy sonini ifodalash uchun ishlatiladigan sinfning maxsus turi",
            style: TextStyle(fontFamily: "PlaypenSans"),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PageFive(),
                  ),
                );
              },
              child: const Text("5-page"),
            ),
          ),
        ],
      ),
    );
  }
}
