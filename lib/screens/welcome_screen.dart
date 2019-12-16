import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_screen.dart';
import 'registration_screen.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      //user.updateProfile(info);
      if (user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    } catch (e) {
      SnackBar(content: Text('$e'));
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //SizedBox(width: 20.0, height: 100.0),
                Text(
                  "Sudah siap",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10.0),
                RotateAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    text: ['Jadi Petani', 'Bantu Petani', 'Kenal Petani'],
                    textStyle: TextStyle(
                        color: Colors.indigo,
                        fontSize: 24.0,
                        fontFamily: "Horizon",
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                    alignment:
                        AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
                Text(
                  ' ?',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SvgPicture.asset(
              'images/corn-stalks.svg',
              width: size.width / 1.2,
            ),
            Center(
              child: ColorizeAnimatedTextKit(
                  text: [
                    'JadiPetani',
                    'JadiPetani',
                    'JadiPetani',
                  ],
                  textStyle: TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Horizon",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                  colors: [
                    Colors.purple,
                    Colors.blue,
                    Colors.yellow,
                    Colors.red,
                  ],
                  textAlign: TextAlign.start,
                  alignment:
                      AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
            ),
            Column(
              children: <Widget>[
                InkWell(
                  splashColor: Colors.pink,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.greenAccent,
                      ),
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.all(4),
                      width: size.width / 1.2,
                      child: Text(
                        'Masuk',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                InkWell(
                  splashColor: Colors.pink,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlue,
                      ),
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.all(4),
                      width: size.width / 1.2,
                      child: Text(
                        'Daftar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
