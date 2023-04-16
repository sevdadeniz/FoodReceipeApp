import 'package:flutter/material.dart';
import 'package:food_receipe_app/login/login.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 93.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.darken,
              ),
              image: AssetImage(
                "images/started_bg.jpeg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  SizedBox(
                    height: 79,
                    width: 79,
                    child: Image.asset("images/started_logo.png"),
                  ),
                  const Text(
                    "100K+ Premium Receipe",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const SizedBox(
                width: 213,
                height: 120,
                child: Text(
                  "Get Cooking",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Text(
                "Simple way to find Toasty Receipe",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, top: 50, right: 15, bottom: 50),
                child: SizedBox(
                  width: 243.0,
                  height: 54.0,
                  child: ElevatedButton(
                    // ignore: sort_child_properties_last
                    child: const Text('Start Cooking'),
                    style: ElevatedButton.styleFrom(
                      // ignore: use_full_hex_values_for_flutter_colors
                      backgroundColor: const Color(0xfff129575),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
