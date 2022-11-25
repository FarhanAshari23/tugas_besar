import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tugas_besar/views/detail.dart';
import 'package:tugas_besar/views/profile.dart';
import 'package:tugas_besar/views/transaction.dart';
import 'package:tugas_besar/views/widgets/clothes.card.dart';

import '../models/clothes.api.dart';
import '../models/clothes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Clothes> _clothes;
  bool _isLoading = true;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    getClothes();
  }

  Future<void> getClothes() async {
    _clothes = await ClothesApi.getClothes();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          mainAxisExtent: 300,
        ),
        itemCount: _clothes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 20,
              right: 10,
              bottom: 10,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      code: _clothes[index].codeP,
                      name: _clothes[index].nameP,
                      price: _clothes[index].priceP,
                      colour: _clothes[index].colourP,
                      imageOne: _clothes[index].imageOneP,
                      article: _clothes[index].article,
                    ),
                  ),
                );
              },
              child: ClothesCard(
                title: _clothes[index].nameP,
                price: _clothes[index].priceP,
                colour: _clothes[index].colourP,
                thumbnailUrl: _clothes[index].imageOneP,
              ),
            ),
          );
        },
      ),
      const TransactionPage(),
      const ProfileView(),
      Column(
        children: [
          const DetailPage(),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              child: const Text("Back to Home Page"),
            ),
          ),
        ],
      )
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/cloth.png',
              height: 25,
              width: 25,
            ),
            const SizedBox(width: 10),
            const Text("H&M Online Shop"),
          ],
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.black87,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.shopping_bag, title: 'Transaction'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}
