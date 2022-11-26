import 'package:flutter/material.dart';
import 'package:tugas_besar/views/widgets/font.dart';

class DetailTransactionPage extends StatefulWidget {
  final String? code;
  final String? name;
  final String? colour;
  final String? price;
  final String imageOne;
  final String? status;
  const DetailTransactionPage({
    super.key,
    this.code,
    this.name,
    this.price,
    this.colour,
    required this.imageOne,
    this.status,
  });

  @override
  State<DetailTransactionPage> createState() => _DetailTransactionPageState();
}

class _DetailTransactionPageState extends State<DetailTransactionPage> {
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
      backgroundColor: const Color(0xff1167b1),
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
                  image: AssetImage(widget.imageOne),
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
                color: const Color(0xff03254C),
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
                      "Status: ${widget.status}",
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
