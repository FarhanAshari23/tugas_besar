import 'package:flutter/material.dart';
import 'package:tugas_besar/views/widgets/font.dart';

class DetailPage extends StatefulWidget {
  final String? code;
  final String? name;
  final String? colour;
  final String? price;
  final String? imageOne;
  final String? article;
  const DetailPage({
    super.key,
    this.code,
    this.name,
    this.price,
    this.colour,
    this.imageOne,
    this.article,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      backgroundColor: const Color(0xFFAAb5AF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 120),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(widget.imageOne.toString()),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, top: 20),
            child: Container(
              width: 300,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff365544),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "code: ${widget.code}",
                      style: detailProduct,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Name Products: ${widget.name}",
                      style: detailProduct,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Colour: ${widget.colour}",
                      style: detailProduct,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Price: ${widget.price}",
                      style: detailProduct,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "No Article: ${widget.article}",
                      style: detailProduct,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Get Back")),
          )
        ],
      ),
    );
  }
}
