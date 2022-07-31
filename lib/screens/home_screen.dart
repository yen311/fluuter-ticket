import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket/screens/bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 225, 233),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  const Text("Good Morning"),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/img_1.png'),
                      ),
                    ),
                  )
                  //Image.asset('assets/images/img_1.png'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
