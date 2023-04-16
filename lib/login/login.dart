import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_receipe_app/home.dart';
import 'package:food_receipe_app/login/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Hello,',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "OpenSans",
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Welcome Back!',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "OpenSans",
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: emailController,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Email",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Password",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()),
                    );
                  },
                  child: const Text(
                    'Forgot Password?',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.orange, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, top: 30, right: 15, bottom: 50),
                  child: SizedBox(
                    width: 280.0,
                    height: 54.0,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          // ignore: use_full_hex_values_for_flutter_colors
                          backgroundColor: const Color(0xfff129575),
                        ),
                        onPressed: () {
                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text)
                              .then((value) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            ).onError((error, stackTrace) {
                              print("Error ${error.toString()}");
                            });
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                        label: const Text("Sign in"),
                        //.........
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(color: Colors.orange, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
