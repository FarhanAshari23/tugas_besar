import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:tugas_besar/views/profile.dart';
import 'package:tugas_besar/views/transaction.dart';
import 'package:tugas_besar/views/widgets/font.dart';
import 'home.dart';

class SplashScrenn extends StatefulWidget {
  const SplashScrenn({Key? key}) : super(key: key);

  @override
  State<SplashScrenn> createState() => _SplashScrennState();
}

class _SplashScrennState extends State<SplashScrenn> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        globalBackgroundColor: const Color(0xff1C1E1E),
        pages: [
          PageViewModel(
            decoration: PageDecoration(
              bodyTextStyle: bodyOpening,
              titleTextStyle: titleOpening,
            ),
            title: "Welcome to OnThrift App!!",
            body: "The app can help you to find a good clothes",
            image: Center(
              child: SizedBox(
                width: 350,
                height: 350,
                child: Lottie.asset(
                  'assets/slide_1.json',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          PageViewModel(
            decoration: PageDecoration(
              bodyTextStyle: bodyOpening,
              titleTextStyle: titleOpening,
            ),
            title: "Collaboration with H&M Brands",
            body: "You can buy an H&M products with a good price",
            image: Center(
              child: SizedBox(
                width: 300,
                height: 300,
                child: Lottie.asset(
                  'assets/slide_2.json',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          PageViewModel(
            decoration: PageDecoration(
              bodyTextStyle: bodyOpening,
              titleTextStyle: titleOpening,
            ),
            title: "What are you waiting for?",
            body: "Just click done and you can open the app",
            image: Center(
              child: SizedBox(
                width: 350,
                height: 350,
                child: Lottie.asset(
                  'assets/slide_3.json',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
        done: Text(
          'DONE',
          style: titleRecomend,
        ),
        showNextButton: true,
        next: Text(
          'NEXT',
          style: titleRecomend,
        ),
        showBackButton: true,
        back: Text(
          'BACK',
          style: titleRecomend,
        ),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const HomePage(),
            ),
          );
        });
  }
}
