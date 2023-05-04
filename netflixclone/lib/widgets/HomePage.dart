import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixclone/service/api_service.dart';
import 'package:netflixclone/service/movie.dart';
import 'package:provider/provider.dart';
import 'package:netflixclone/service/data_repository.dart';
import 'constant_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dataRepository = Provider.of<DataRepository>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        excludeHeaderSemantics: true,
        scrolledUnderElevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("TV Shows", style: GoogleFonts.poppins(fontSize: 11)),
              Text("Films", style: GoogleFonts.poppins(fontSize: 11)),
              Text("Catégories", style: GoogleFonts.poppins(fontSize: 11)),
            ],
          ),
        ),
        leading: Image.asset("assets/images/netflix_logo_2.png"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/im1.jpg")),
                borderRadius: BorderRadius.circular(8)),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
              height: 500,
              child: dataRepository.popularMovieList.isEmpty
                  ? const Center()
                  : Image.network(
                      dataRepository.popularMovieList[19].posterUrl(),
                      fit: BoxFit.cover,
                    )),
          const SizedBox(
            height: 10,
          ),
          Text("Les films les plus populaires",
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 160,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: ((BuildContext context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 110,
                    color: Colors.amber,
                    child: Container(
                        height: 500,
                        child: dataRepository.popularMovieList.isEmpty
                            ? const Center()
                            : Image.network(
                                dataRepository.popularMovieList[index]
                                    .posterUrl(),
                                fit: BoxFit.cover,
                              )),
                  );
                })),
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Ils arrivent bientôt",
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: ((BuildContext context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 160,
                    color: Colors.blue,
                    child: Text("$index",
                        style: GoogleFonts.poppins(fontSize: 18)),
                  );
                })),
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Actuellement au cinéma",
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 160,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: ((BuildContext context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 110,
                    color: Colors.teal,
                    child: Text("$index",
                        style: GoogleFonts.poppins(fontSize: 18)),
                  );
                })),
          ),
        ],
      )),
    );
  }
}
