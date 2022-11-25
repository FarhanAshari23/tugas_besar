import 'package:flutter/material.dart';
import 'package:tugas_besar/views/widgets/font.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget accountSetting(String mainImg, String mainTitle, String subTitle) {
      return Stack(
        children: [
          Container(
            width: 355,
            height: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff323232),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 18,
                left: 15,
                bottom: 25,
                right: 22,
              ),
              child: SizedBox(
                height: 40,
                width: 318,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          mainImg,
                          width: 40,
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                mainTitle,
                                style: mainTitleSetting,
                              ),
                              Text(
                                subTitle,
                                style: subTitleSetting,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset(
                          'assets/NextWhite.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 280,
                width: double.infinity,
                color: Colors.grey,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 35,
                      top: 30,
                      right: 20,
                    ),
                    child: SizedBox(
                      width: 350,
                      height: 80,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/picture_profile.png',
                            height: 80,
                            width: 80,
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Muhammad Farhan Ashari',
                                style: nameProfile,
                              ),
                              Text(
                                '+62895640284677',
                                style: hpProfile,
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/Edit.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Padding(
                    padding: EdgeInsets.only(right: 30, left: 305),
                    child: Text(
                      'See details',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 350,
                          height: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff191919)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12,
                          left: 15,
                          bottom: 10,
                          right: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/wallet.png',
                                  width: 30,
                                  height: 30,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Rp. 72.538',
                                  style: nameP,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/group.png',
                                  width: 30,
                                  height: 30,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Silver',
                                  style: nameP,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/coupon.png',
                                  width: 30,
                                  height: 30,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '21 Coupons',
                                  style: nameP,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/rating.png',
                                  width: 30,
                                  height: 30,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '13 Reviews',
                                  style: nameP,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SizedBox(
              height: 390,
              width: 360,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 25),
                      accountSetting(
                        'assets/home.png',
                        'List of Address',
                        'Set your address shipping',
                      ),
                      const SizedBox(height: 35),
                      accountSetting(
                        'assets/bank.png',
                        'Bank Account',
                        'Withdraw balance to account destination',
                      ),
                      const SizedBox(height: 35),
                      accountSetting(
                        'assets/ewallet.png',
                        'Instant Payment',
                        'E-wallet, credit card, and others',
                      ),
                      const SizedBox(height: 35),
                      accountSetting(
                        'assets/padlock.png',
                        'Account Security',
                        'Password, PIN, and personal verification',
                      ),
                      const SizedBox(height: 35),
                      accountSetting(
                        'assets/compliant.png',
                        'Account Privacy',
                        'Manage data usage & connected accounts',
                      ),
                      const SizedBox(height: 25),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Version 1.0.10",
                            style: version,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
