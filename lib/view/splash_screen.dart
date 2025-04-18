import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:veresiye_app/constant/colors/colors.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            // Sayfadan taşan yapı
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
                  buttonColor,
                  const Color.fromARGB(255, 53, 141, 235),
                  const Color.fromARGB(255, 78, 172, 250),
                ], stops: [
                  0.3,
                  0.6,
                  0.7,
                ]),
              ),
            ), // Ana içerik
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/logo1.png",
                    width: 200,
                  ),
                  // SlideTransition ile yandan gelen yazı

                  // İkinci sayfada veri çekildiğinde gösterilecek spinner
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: SpinKitDoubleBounce(
                      color: Colors.blue[800],
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
