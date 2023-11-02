import 'package:flutter/material.dart';
import 'package:flutter_hom_beginner_widgets/pages/page_one/one_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.blue,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        elevation: 15,
        titleSpacing: 130,
        title: const Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
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
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PageOne(),
              ),
            );
          },
          child: const Text("Oqishni Boshlash"),
        ),
      ),
    );
  }
}
