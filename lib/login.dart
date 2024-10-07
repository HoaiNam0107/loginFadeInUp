import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    super.key,
  });

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  int activeIndex = 0;

  final List<String> _images = [
    'https://firebasestorage.googleapis.com/v0/b/finalproject-3810d.appspot.com/o/original-b2b8f0f9f23a640081a31060a5b572fa.jpg?alt=media&token=ed1a2292-bef9-47ec-8e6f-e5da3dc5b6d6',
    'https://firebasestorage.googleapis.com/v0/b/finalproject-3810d.appspot.com/o/original-5a1dc6ddd62b69c750f0d43b2f6219ee.png?alt=media&token=7531b2ef-3325-4d61-8378-aa7b6f746b79',
    'https://firebasestorage.googleapis.com/v0/b/finalproject-3810d.appspot.com/o/original-0818aeaf44b8a73fc49ff6610d9de8f5.jpg?alt=media&token=8ad21d12-3a10-4a7b-a510-1737e835e71f',
    'https://firebasestorage.googleapis.com/v0/b/finalproject-3810d.appspot.com/o/original-e607604cd9345d8e0e3d566fd64d7605.png?alt=media&token=23b85fae-28a0-4056-a429-5e4f753e2625',
  ];

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        activeIndex++;
        if (activeIndex == 4) activeIndex = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              FadeInUp(
                child: Container(
                  height: 350,
                  child: Stack(
                    children: _images.asMap().entries.map((e) {
                      return Positioned(
                          top: 0,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: AnimatedOpacity(
                            duration: Duration(seconds: 1),
                            opacity: activeIndex == e.key ? 1 : 0,
                            child: Image.network(
                              e.value,
                              height: 400,
                            ),
                          ));
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              FadeInUp(
                  delay: Duration(milliseconds: 800),
                  duration: Duration(milliseconds: 1500),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        prefixIcon: Icon(
                          Iconsax.user,
                          color: Colors.black,
                          size: 18,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        floatingLabelStyle:
                            TextStyle(color: Colors.black, fontSize: 18),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  )),
              SizedBox(
                height: 20,
              ),
              FadeInUp(
                delay: Duration(milliseconds: 800),
                duration: Duration(milliseconds: 1500),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Iconsax.key,
                        color: Colors.black,
                        size: 18,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.shade200, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      floatingLabelStyle:
                          TextStyle(color: Colors.black, fontSize: 18),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1300),
                delay: Duration(milliseconds: 800),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1300),
                delay: Duration(milliseconds: 800),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  height: 45,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.black,
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1300),
                delay: Duration(milliseconds: 800),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
