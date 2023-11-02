import 'package:flutter/material.dart';
import 'package:flutter_hom_beginner_widgets/pages/page_four/four_page.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        title: const Text("Page 3"),
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
            "Map",
            style: TextStyle(
              fontFamily: "Palypen Sans",
              fontWeight: FontWeight.w900,
            ),
          ),
          const Text(
            "Dartdagi Map lar kalit-qiymat juftligini saqlash uchun ishlatiladigan ma'lumotlar tuzilmasi. Ular boshqa tillardagi HashMaps va Lug'atlarga o'xshaydi.",
            style: TextStyle(fontFamily: "PlaypenSans"),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PageFour(),
                  ),
                );
              },
              child: const Text("4-page"),
            ),
          ),
        ],
      ),
    );
  }
}
