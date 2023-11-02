import 'package:flutter/material.dart';
import 'package:flutter_hom_beginner_widgets/pages/page_three/three_page.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.amberAccent,
        title: const Text("Page 2"),
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
            "Set",
            style: TextStyle(
              fontFamily: "Palypen Sans",
              fontWeight: FontWeight.w900,
            ),
          ),
          const Text(
            "Set bu tartib muhim bo'lmagan va takroriy elementlar e'tiborga olinmaydigan malumot turi husoblanadi",
            style: TextStyle(fontFamily: "PlaypenSans"),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PageThree(),
                  ),
                );
              },
              child: const Text("3-page"),
            ),
          ),
        ],
      ),
    );
  }
}
