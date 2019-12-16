import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jadi_petani/screens/login_screen.dart';
import 'home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadi_petani/widgets/social_icons.dart';
import 'package:jadi_petani/widgets/register_card.dart';
import 'package:jadi_petani/widgets/custom_icons.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;
  UserUpdateInfo info = UserUpdateInfo();
  String displayString;
//  String email;
//  String password;
//  String displayName;
//  void getCurrentUser() async {
//    try {
//      final user = await _auth.currentUser();
//      //user.updateProfile(info);
//      if (user != null) {
//        Navigator.push(
//            context, MaterialPageRoute(builder: (context) => HomeScreen()));
//      }
//    } catch (e) {
//      print(e);
//    }
//  }

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Image.asset('images/ss_logo.png'),
              ),
              Expanded(
                child: Container(),
              ),
              Image.asset('images/image_02.png')
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 36.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'images/logo.png',
                        width: ScreenUtil.getInstance().setWidth(110),
                        height: ScreenUtil.getInstance().setHeight(110),
                      ),
                      Text('jadipetani',
                          style: TextStyle(
                              fontFamily: "Poppins-Bold",
                              fontSize: ScreenUtil.getInstance().setSp(52),
                              letterSpacing: .5,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(180),
                  ),
                  RegisterCard(),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          width: ScreenUtil.getInstance().setWidth(330),
                          height: ScreenUtil.getInstance().setHeight(100),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFF17ead9),
                                Color(0xFF6078ea)
                              ]),
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF6078ea).withOpacity(.3),
                                    offset: Offset(0.0, 8.0),
                                    blurRadius: 8.0)
                              ]),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () async {
                                try {
                                  await _auth.createUserWithEmailAndPassword(
                                      email: RegisterCard.email,
                                      password: RegisterCard.password);

                                  info.displayName = RegisterCard.displayName;

                                  loggedInUser = await _auth.currentUser();

                                  await loggedInUser.updateProfile(info);

                                  if (loggedInUser != null) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeScreen()));
                                  }
                                } catch (e) {
                                  Scaffold.of(context).showSnackBar(
                                      SnackBar(content: Text('$e')));
                                }
                              },
                              child: Center(
                                child: Text('DAFTAR',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins-Bold',
                                        fontSize: 18,
                                        letterSpacing: 1.0)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      horizontalLine(),
                      Text("Social Login",
                          style: TextStyle(
                              fontSize: 16.0, fontFamily: "Poppins-Medium")),
                      horizontalLine()
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialIcon(
                        colors: [
                          Color(0xFF102397),
                          Color(0xFF187adf),
                          Color(0xFF00eaf8),
                        ],
                        iconData: CustomIcons.facebook,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        colors: [
                          Color(0xFFff4f38),
                          Color(0xFFff355d),
                        ],
                        iconData: CustomIcons.googlePlus,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        colors: [
                          Color(0xFF17ead9),
                          Color(0xFF6078ea),
                        ],
                        iconData: CustomIcons.twitter,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        colors: [
                          Color(0xFF00c6fb),
                          Color(0xFF005bea),
                        ],
                        iconData: CustomIcons.linkedin,
                        onPressed: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Sudah terdaftar? ",
                        style: TextStyle(fontFamily: "Poppins-Medium"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text('LOGIN',
                            style: TextStyle(
                                color: Color(0xFF5d74e3),
                                fontFamily: "Poppins-Bold")),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    //return Scaffold(
    //  body: SafeArea(
//          child: Column(
//        children: <Widget>[
//          TextField(
//            keyboardType: TextInputType.emailAddress,
//            onChanged: (value) {
//              email = value;
//            },
//          ),
//          TextField(
//            obscureText: true,
//            onChanged: (value) {
//              password = value;
//            },
//          ),
//          TextField(
//            onChanged: (value) {
//              displayName = value;
//            },
//          ),
//          RaisedButton(
//            onPressed: () async {
//              try {
//                final newuser = await _auth.createUserWithEmailAndPassword(
//                    email: email, password: password);
//                info.displayName = displayName;
//                loggedInUser = await _auth.currentUser();
//                await loggedInUser.reload();
//                await loggedInUser.updateProfile(info);
//                if (newuser != null && info.displayName != null) {
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => HomeScreen()));
//                }
//              } catch (e) {
//                print(e);
//              }
//            },
//            child: Text('DAFTRA!'),
//          )
//        ],
//      )),
//            ));
  }
}
