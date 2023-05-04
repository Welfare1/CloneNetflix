import 'package:flutter/material.dart';
import 'package:netflixclone/service/data_repository.dart';
import 'widgets/HomePage.dart';
import 'package:provider/provider.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'screens/loading_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => DataRepository(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        // home: AnimatedSplashScreen(
        //     duration: 3000,
        //     splash: "assets/images/netflix_logo_1.png",
        //     nextScreen: const HomePage(),
        //     splashTransition: SplashTransition.slideTransition,
        //     // pageTransitionType: PageTransitionType.scale,
        //     animationDuration: const Duration(milliseconds: 2000),
        //     backgroundColor: Colors.black));
        home: const LoadingScreen());
  }
}
