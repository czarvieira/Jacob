// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Homepage',
        ),
      ),
      body: Center(
        child: GestureDetector(
          child: Text(
            'Contador: $counter',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          onTap: () {
            setState(
              () {
                counter++;
              },
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(
                () {
                  counter++;
                },
              );
            },
            elevation: 1.0,
            backgroundColor: Colors.blue.shade200,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(
                () {
                  if (counter > 0) {
                    counter--;
                  }
                },
              );
            },
            elevation: 1.0,
            backgroundColor: Colors.blue.shade200,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
