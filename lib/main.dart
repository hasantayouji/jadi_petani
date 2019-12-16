import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jadi_petani/screens/welcome_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}

//class SwiperPetani extends StatefulWidget {
//  @override
//  _SwiperPetaniState createState() => _SwiperPetaniState();
//}
//
//class _SwiperPetaniState extends State<SwiperPetani> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      drawerScrimColor: Colors.white,
//      backgroundColor: Colors.white,
//      body: SafeArea(
//        child: ListView(
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.only(top: 12.0, bottom: 0, left: 12.0),
//              child: Text(
//                'Hi, Dwilaras!',
//                style: TextStyle(
//                  fontSize: 24,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//            ),
//            Container(
//              margin: EdgeInsets.all(12.0),
//              child: Column(
//                children: <Widget>[
//                  Container(
//                    color: Colors.blueAccent,
//                    padding: EdgeInsets.all(8.0),
//                    child: Column(
//                      children: <Widget>[
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            Row(
//                              children: <Widget>[
//                                Padding(
//                                  padding: const EdgeInsets.symmetric(
//                                      horizontal: 8.0),
//                                  child: Icon(
//                                    Icons.account_balance_wallet,
//                                    color: Colors.white,
//                                    size: 16,
//                                  ),
//                                ),
//                                Text(
//                                  'Total Investasi',
//                                  style: TextStyle(
//                                    color: Colors.white,
//                                  ),
//                                ),
//                              ],
//                            ),
//                            Padding(
//                              padding:
//                                  const EdgeInsets.symmetric(horizontal: 8.0),
//                              child: Text(
//                                'Rp 100.000.000,00',
//                                style: TextStyle(
//                                  color: Colors.white,
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            Row(
//                              children: <Widget>[
//                                Padding(
//                                  padding: const EdgeInsets.symmetric(
//                                      horizontal: 8.0),
//                                  child: Icon(
//                                    Icons.account_balance_wallet,
//                                    color: Colors.white,
//                                    size: 16,
//                                  ),
//                                ),
//                                Text(
//                                  'Total Asset',
//                                  style: TextStyle(
//                                    color: Colors.white,
//                                  ),
//                                ),
//                              ],
//                            ),
//                            Padding(
//                              padding:
//                                  const EdgeInsets.symmetric(horizontal: 8.0),
//                              child: Text(
//                                'Rp 143.490.000,00',
//                                style: TextStyle(
//                                  color: Colors.white,
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            Row(
//                              children: <Widget>[
//                                Padding(
//                                  padding: const EdgeInsets.symmetric(
//                                      horizontal: 8.0),
//                                  child: Icon(
//                                    Icons.account_balance_wallet,
//                                    color: Colors.white,
//                                    size: 16,
//                                  ),
//                                ),
//                                Text(
//                                  'Total Bagi Hasil',
//                                  style: TextStyle(
//                                    color: Colors.white,
//                                  ),
//                                ),
//                              ],
//                            ),
//                            Padding(
//                              padding:
//                                  const EdgeInsets.symmetric(horizontal: 8.0),
//                              child: Text(
//                                'Rp 24.800.000,00',
//                                style: TextStyle(
//                                  color: Colors.white,
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    color: Colors.blue,
//                    padding: EdgeInsets.all(16.0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: <Widget>[
//                        Column(
//                          children: <Widget>[
//                            Icon(
//                              Icons.payment,
//                              color: Colors.white,
//                              size: 48,
//                            ),
//                            Text(
//                              'Invest',
//                              style: TextStyle(color: Colors.white),
//                            ),
//                          ],
//                        ),
//                        Column(
//                          children: <Widget>[
//                            Icon(
//                              Icons.monetization_on,
//                              color: Colors.white,
//                              size: 48,
//                            ),
//                            Text(
//                              'Tarik',
//                              style: TextStyle(color: Colors.white),
//                            ),
//                          ],
//                        ),
//                        Column(
//                          children: <Widget>[
//                            Icon(
//                              Icons.library_books,
//                              color: Colors.white,
//                              size: 48,
//                            ),
//                            Text(
//                              'Rincian',
//                              style: TextStyle(color: Colors.white),
//                            ),
//                          ],
//                        ),
//                        Column(
//                          children: <Widget>[
//                            Icon(
//                              Icons.notifications,
//                              color: Colors.white,
//                              size: 48,
//                            ),
//                            Text(
//                              'Info',
//                              style: TextStyle(color: Colors.white),
//                            ),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//            Container(
//              padding: EdgeInsets.all(16.0),
//              child: Column(
//                //crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: <Widget>[
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      CircleAvatar(
//                        radius: 28,
//                        backgroundColor: Colors.greenAccent,
//                        child: Icon(
//                          Icons.aspect_ratio,
//                          size: 36,
//                        ),
//                      ),
//                      CircleAvatar(
//                        radius: 28,
//                        backgroundColor: Colors.greenAccent,
//                        child: Icon(
//                          Icons.access_alarms,
//                          size: 36,
//                        ),
//                      ),
//                      CircleAvatar(
//                        radius: 28,
//                        backgroundColor: Colors.greenAccent,
//                        child: Icon(
//                          Icons.access_alarms,
//                          size: 36,
//                        ),
//                      ),
//                      CircleAvatar(
//                        radius: 28,
//                        backgroundColor: Colors.greenAccent,
//                        child: Icon(
//                          Icons.access_alarms,
//                          size: 36,
//                        ),
//                      ),
//                    ],
//                  ),
//                  SizedBox(
//                    height: 16,
//                  ),
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      CircleAvatar(
//                        radius: 28,
//                        backgroundColor: Colors.greenAccent,
//                        child: Icon(
//                          Icons.access_alarms,
//                          size: 36,
//                        ),
//                      ),
//                      CircleAvatar(
//                        radius: 28,
//                        backgroundColor: Colors.greenAccent,
//                        child: Icon(
//                          Icons.access_alarms,
//                          size: 36,
//                        ),
//                      ),
//                      CircleAvatar(
//                        radius: 28,
//                        backgroundColor: Colors.greenAccent,
//                        child: Icon(
//                          Icons.access_alarms,
//                          size: 36,
//                        ),
//                      ),
//                      CircleAvatar(
//                        radius: 28,
//                        backgroundColor: Colors.greenAccent,
//                        child: Icon(
//                          Icons.access_alarms,
//                          size: 36,
//                        ),
//                      ),
//                    ],
//                  ),
//                ],
//              ),
//            ),
//            Divider(
//              height: 0,
//              color: Colors.grey,
//              indent: 16,
//              endIndent: 16,
//            ),
//            Container(
//              padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
//              child: Column(
//                children: <Widget>[
//                  Row(
//                    children: <Widget>[Text('POPULAR')],
//                  ),
//                  Container(
//                    margin: EdgeInsets.only(left: 0),
//                    padding: EdgeInsets.only(left: 0),
//                    height: 150,
//                    child: ListView(
//                      shrinkWrap: true,
//                      scrollDirection: Axis.horizontal,
//                      children: <Widget>[
//                        Container(
//                          height: 150,
//                          width: 150,
//                          child: Card(
//                            color: Colors.greenAccent,
//                            elevation: 2,
//                          ),
//                        ),
//                        Container(
//                          height: 150,
//                          width: 150,
//                          child: Card(
//                            color: Colors.greenAccent,
//                            elevation: 2,
//                          ),
//                        ),
//                        Container(
//                          height: 150,
//                          width: 150,
//                          child: Card(
//                            color: Colors.greenAccent,
//                            elevation: 2,
//                          ),
//                        ),
//                        Container(
//                          height: 150,
//                          width: 150,
//                          child: Card(
//                            color: Colors.greenAccent,
//                            elevation: 2,
//                          ),
//                        ),
//                        Container(
//                          height: 150,
//                          width: 150,
//                          child: Card(
//                            color: Colors.greenAccent,
//                            elevation: 2,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//            Divider(
//              height: 0,
//              color: Colors.grey,
//              indent: 16,
//              endIndent: 16,
//            ),
//            Container(
//              margin: EdgeInsets.all(16),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: <Widget>[
//                  Text('TERNAK'),
//                  Container(
//                    height: 200,
//                    child: Card(
//                      color: Colors.blueAccent,
//                      elevation: 4,
//                    ),
//                  ),
//                ],
//              ),
//            ),
//            Divider(
//              height: 0,
//              color: Colors.grey,
//              indent: 16,
//              endIndent: 16,
//            ),
//            Container(
//              margin: EdgeInsets.all(16),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: <Widget>[
//                  Text('HIDROPONIK'),
//                  Container(
//                    height: 200,
//                    child: Card(
//                      color: Colors.blueAccent,
//                      elevation: 4,
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ],
//        ),
////        Container(
////          height: 200.0,
////          padding: EdgeInsets.symmetric(vertical: 10),
////          child: Swiper(
////            itemCount: 3,
////            itemBuilder: (BuildContext context, int index) {
////              return Card(
////                elevation: 6,
////                child: Image.network(
////                  'http://via.placeholder.com/350x150',
////                  fit: BoxFit.cover,
////                ),
////              );
////            },
////            pagination: SwiperPagination(),
////            //control: SwiperControl(),
////            viewportFraction: 0.8,
////            scale: 0.9,
////          ),
////        ),
//      ),
//    );
//  }
//}
