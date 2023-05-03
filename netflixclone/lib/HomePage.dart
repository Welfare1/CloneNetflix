import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        excludeHeaderSemantics: true,
        scrolledUnderElevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("TV Shows"),
              Text("Films"),
              Text("Catégories"),
            ],
          ),
        ),
        leading: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/NetflixIcon2.png"))),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ClipRRect(
            child: Image.asset("assets/images/im1.jpg"),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(),
      )),
    );
  }
}
