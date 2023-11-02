import 'package:flutter/material.dart';
import 'package:flutter_hom_beginner_widgets/pages/page_two/two_page.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
        title: const Text("Page 1"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "List",
            style: TextStyle(
              fontFamily: "Palypen Sans",
              fontWeight: FontWeight.w900,
            ),
          ),
          const Text(
            "Dartda massivlar List obektlari bo'lib, ko'pchilik ularni ro'yxat deb ataydi",
            style: TextStyle(fontFamily: "PlaypenSans"),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PageTwo(),
                  ),
                );
              },
              child: const Text("2-page"),
            ),
          ),
        ],
      ),
    );
  }
}
