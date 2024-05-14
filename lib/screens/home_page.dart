// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text(
            "New Trend",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(FontAwesomeIcons.cartPlus),
              onPressed: () {},
            ),
          ]),
      body: Column(
        children: [
          Container(
            height: 130,
            width: 220,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 40,
                offset: const Offset(10, 10), // changes position of shadow
              ),
            ]),
            child: Card(
              color: Colors.white.withOpacity(1),
              elevation: 12,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hand pag TY",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ 225",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
