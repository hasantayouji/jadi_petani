import 'package:flutter/material.dart';
import 'dart:async';
import 'package:jadi_petani/constants.dart';
import 'package:jadi_petani/widgets/invest_value_widget.dart';
import 'package:jadi_petani/widgets/card_invest.dart';
import 'package:jadi_petani/widgets/card_small.dart';
import 'package:jadi_petani/widgets/service_menu.dart';
import 'package:jadi_petani/widgets/finance_menu_widget.dart';
import 'package:jadi_petani/widgets/invest_card_widget.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  final _auth = FirebaseAuth.instance;

  FirebaseUser loggedInUser;
  String displayString;
  String aha;

  void getCurrentUser() async {
    try {
      loggedInUser = await _auth.currentUser();
      displayString = loggedInUser.displayName;
      if (loggedInUser != null && loggedInUser.displayName != null) {
        //displayString = loggedInUser.displayName;
        //displayName();
        setState(() {
          //displayString = loggedInUser.displayName;
        });
      }
      //displayString = loggedInUser.displayName;
      //displayName();
    } catch (e) {
      print(e);
    }
  }

  Widget displayName() {
    if (displayString == null) {
      return Text(
        'Hi, ',
        style: kUserTextStyle,
      );
    } else {
      return Text(
        'Hi, $displayString!',
        style: kUserTextStyle,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black54,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Shop'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('Chat'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              title: Text('Profile'),
            ),
          ]),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            left: 16.0,
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  displayName(),
                  InkWell(
                    onTap: () {
                      _auth.signOut();
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.exit_to_app),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0, right: 16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.0,
                      vertical: 4.0,
                    ),
                    color: Colors.blueAccent,
                    child: Column(
                      children: <Widget>[
                        InvestValue(
                          icon: Icons.account_balance_wallet,
                          text: 'Total Investasi',
                          value: 'Rp 100.000.000,00',
                        ),
                        InvestValue(
                          icon: Icons.account_balance_wallet,
                          text: 'Total Asset',
                          value: 'Rp 143.490.000,00',
                        ),
                        InvestValue(
                          icon: Icons.account_balance_wallet,
                          text: 'Total Bagi Hasil',
                          value: 'Rp 24.800.000,00',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FinanceWidget(
                            icon: Icons.payment,
                            text: 'Invest',
                            color: Colors.white,
                          ),
                          FinanceWidget(
                            icon: Icons.monetization_on,
                            text: 'Tarik',
                            color: Colors.white,
                          ),
                          FinanceWidget(
                            icon: Icons.library_books,
                            text: 'Rincian',
                            color: Colors.white,
                          ),
                          FinanceWidget(
                              icon: Icons.alarm,
                              text: 'Info',
                              color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                right: 16.0,
                top: 16.0,
                bottom: 8.0,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ServiceMenu(
                          icon: MaterialCommunityIcons.cow,
                          bgColor: Colors.greenAccent,
                          textColor: Colors.black,
                          text: 'Ternak Sapi'),
                      ServiceMenu(
                          icon: MaterialCommunityIcons.sheep,
                          bgColor: Colors.greenAccent,
                          textColor: Colors.black,
                          text: 'Ternak Domba'),
                      ServiceMenu(
                          icon: MaterialCommunityIcons.rice,
                          bgColor: Colors.greenAccent,
                          textColor: Colors.black,
                          text: 'Hasil Sawah'),
                      ServiceMenu(
                          icon: MaterialCommunityIcons.food_apple,
                          bgColor: Colors.greenAccent,
                          textColor: Colors.black,
                          text: 'Hasil Kebun'),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ServiceMenu(
                          icon: MaterialCommunityIcons.fish,
                          bgColor: Colors.greenAccent,
                          textColor: Colors.black,
                          text: 'Budidaya ikan'),
                      ServiceMenu(
                          icon: MaterialCommunityIcons.duck,
                          bgColor: Colors.greenAccent,
                          textColor: Colors.black,
                          text: 'Ternak Unggas'),
                      ServiceMenu(
                          icon: MaterialCommunityIcons.leaf,
                          bgColor: Colors.greenAccent,
                          textColor: Colors.black,
                          text: 'Sayur Mayur'),
                      ServiceMenu(
                          icon: MaterialCommunityIcons.cup_water,
                          bgColor: Colors.greenAccent,
                          textColor: Colors.black,
                          text: 'Hidroponik'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              indent: 0,
              endIndent: 16,
            ),
            Text('INVESTASI POPULER'),
            Container(
              margin: EdgeInsets.only(left: 0),
              padding: EdgeInsets.only(left: 0),
              height: 400,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InvestCard(
                    judul: 'BREEDING SAPI BALI',
                    harga: 9,
                    alokasi: 'Pembelian Bibit Sapi',
                    lokasi: 'Lampung Tengah',
                    profit: '30 Juta / 5 Tahun',
                  ),
                  InvestCard(
                    judul: 'BREEDING DOMBA',
                    harga: 30,
                    alokasi: 'Pembelian Bibit dan Pakan Ternak',
                    lokasi: 'Dramaga, Bogor',
                    profit: '20 Juta / Tahun',
                  ),
                  InvestCard(
                    judul: 'LELE SANGKURIANG',
                    harga: 30,
                    alokasi: 'Pembelian Bibit dan Pakan Ikan',
                    lokasi: 'Dramaga, Bogor',
                    profit: '30 Juta / Tahun',
                  ),
                  InvestCard(
                    judul: 'HIDROPONIK',
                    harga: 160,
                    alokasi: 'Pembangunan Green House',
                    lokasi: 'Parung, Bogor',
                    profit: '350 Juta / Tahun',
                  ),
                ],
              ),
            ),
            Divider(
              indent: 0,
              endIndent: 16,
            ),
            Text('HASIL PANEN'),
            Container(
              height: 200.0,
              child: Swiper(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0)),
                    elevation: 6,
                    child: Image.asset(
                      'images/portfolio-${index + 1}.jpg',
                      fit: BoxFit.fill,
                    ),
                  );
                },
                pagination: SwiperPagination(),
                //control: SwiperControl(),
                viewportFraction: 0.8,
                scale: 0.9,
                autoplay: true,
              ),
            ),
            Divider(
              indent: 0,
              endIndent: 16,
            ),
            Text('KATA INVESTOR'),
            Container(
              height: 250.0,
              child: Swiper(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0)),
                    elevation: 6,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.redAccent,
                            maxRadius: 30.0,
                            child: ClipOval(
                              child: Image.asset(
                                'images/client-${index + 1}.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '${kTesti[index]} - ${kTestiName[index]}',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                pagination: SwiperPagination(),
                //control: SwiperControl(),
                viewportFraction: 0.8,
                scale: 0.9,
              ),
            ),
            Divider(
              indent: 0,
              endIndent: 16,
            ),
          ],
        ),
      ),
    );
  }
}
