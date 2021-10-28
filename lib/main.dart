import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Center(child: Text("Ask Me Anything"),),
        ),
        body:Magic(),
      ),

    ),
  );
}


class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int ballNumber = 1;

  void changeNumber(){
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            changeNumber();
          });
        },
        child: Image.asset('images/ball$ballNumber.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,),
      ),
    );
  }
}
