import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner:false,
         home: Scaffold(
            body: SafeArea(
              child:CotainerButtons()
            ),
         ),
    );
  }
}

class CotainerButtons extends StatefulWidget {
  const CotainerButtons({Key? key}) : super(key: key);

  @override
  _CotainerButtonsState createState() => _CotainerButtonsState();
}

class _CotainerButtonsState extends State<CotainerButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[

            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed:() {},
              child: const Text('Enabled'),
            ),

            TextButton(
              style:TextButton.styleFrom(
                  textStyle: TextStyle(color: Colors.blue)
              ) ,
              onPressed:() {},
              child: const Text('Enabled'),
            ),

            IconButton(
              icon: const Icon(Icons.volume_up),
              tooltip: 'volume',
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
