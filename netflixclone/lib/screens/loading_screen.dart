import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:netflixclone/widgets/HomePage.dart';
import 'package:netflixclone/widgets/constant_color.dart';
import 'package:netflixclone/service/data_repository.dart';
import 'package:provider/provider.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }

  void initData() async {
    //Instanciating of our dataProvider class
    final dataProvider = Provider.of<DataRepository>(context, listen: false);
    //loading of our miscelleneous queries
    await dataProvider.initData();
    //We navigating on another page
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/netflix_logo_1.png"),
          SpinKitRing(
            color: kPrimaryColor,
            size: 35,
            lineWidth: 3,
          )
        ],
      ),
    );
  }
}
