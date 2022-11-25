import 'package:flutter/material.dart';
import 'package:tugas_besar/views/detailTransaction.dart';
import 'package:tugas_besar/views/home.dart';
import 'package:tugas_besar/views/splash.dart';
import 'package:tugas_besar/views/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScrenn(),
        '/home': (context) => const HomePage(),
        '/detailTransaction': (context) => const DetailTransactionPage(
              code: '',
              name: '',
              price: '',
              colour: '',
              imageOne: '',
              status: '',
            ),
        '/detail': (context) => const DetailPage(
              code: '',
              name: '',
              price: '',
              colour: '',
              imageOne: '',
            )
      },
    );
  }
}
