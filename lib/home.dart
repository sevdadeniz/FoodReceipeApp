import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_receipe_app/login/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding:
              const EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Home Page',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "OpenSans",
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    // ignore: use_full_hex_values_for_flutter_colors
                    backgroundColor: const Color(0xfff129575),
                  ),
                  onPressed: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      print("Çıkış Yapıldı");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  label: const Text("Sign in"),
                  //.........
                ),
              ]),
        ),
      )
    ]));
  }
}
