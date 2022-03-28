import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
        home:Scaffold(
            backgroundColor: Colors.blue,
          body: DiceRoll(),
        ),


    );
  }
}


class DiceRoll extends StatefulWidget {

  @override
  _DiceRollState createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int idnumber=1;
  void changeme(){
    setState(() {
      idnumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child:FlatButton(
              child:Image(
                image: AssetImage('images/dice$idnumber.png'),
              ),
              onPressed:(){
                changeme();
              },
            ),

            )
          ],
        ),
      ),
    );
  }
}
