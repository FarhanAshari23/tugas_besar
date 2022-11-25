import 'package:flutter/material.dart';
import 'package:tugas_besar/views/detailTransaction.dart';
import 'package:tugas_besar/views/widgets/font.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    Widget detailProduct(
      String date,
      String status,
      int color,
      String imgProduct,
      String nameProduct,
      String quantity,
      String price,
      String code,
      String colour,
    ) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailTransactionPage(
                      code: code,
                      name: nameProduct,
                      price: price,
                      colour: colour,
                      imageOne: imgProduct,
                      status: code,
                    )),
          );
        },
        child: Container(
          width: 320,
          height: 145,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xff323232),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 11, top: 10, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: nameP,
                    ),
                    SizedBox(
                        width: 65,
                        height: 15,
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 13,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(color),
                              ),
                              child: Center(
                                child: Text(
                                  status,
                                  style: statusPackage,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'assets/Menu.png',
                              width: 13,
                              height: 13,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imgProduct),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nameProduct,
                          style: nameP,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          quantity,
                          style: terms,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Cost',
                          style: subTitleSetting,
                        ),
                        const SizedBox(height: 3),
                        Text(
                          price,
                          style: priceTransaction,
                        )
                      ],
                    ),
                    const SizedBox(width: 160),
                    Container(
                      width: 100,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black),
                      child: Center(
                        child: Text(
                          'Give Review',
                          style: nameP,
                        ),
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

    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: SizedBox(
                height: 590,
                width: 335,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    detailProduct(
                        '10 August 2022',
                        'Done',
                        0xff25B1DD,
                        'assets/shirt_one.jpg',
                        'Regular Fit Cotton Shirt',
                        '1 piece',
                        '\$ 17.99',
                        "1013055005",
                        "Beige"),
                    const SizedBox(height: 20),
                    detailProduct(
                        '25 July 2022',
                        'Done',
                        0xff25B1DD,
                        'assets/shirt_two.jpg',
                        'Muscle Fit Cotton Shirt',
                        '1 piece',
                        '\$ 24.99',
                        "0989533003",
                        "white"),
                    const SizedBox(height: 20),
                    detailProduct(
                        '15 May 2022',
                        'Done',
                        0xff25B1DD,
                        'assets/shirt_three.jpg',
                        'Slim Fit Fine-knit Turtleneck Sweater',
                        '1 piece',
                        '\$ 29.99',
                        "0989533003",
                        "white"),
                    const SizedBox(height: 20),
                    detailProduct(
                        '4 April 2022',
                        'Cancel',
                        0xffDD2530,
                        'assets/trouser.jpg',
                        'Slim Fit Cotton Twill Pants',
                        '1 piece',
                        '\$ 29.99',
                        "0989533003",
                        "white"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
