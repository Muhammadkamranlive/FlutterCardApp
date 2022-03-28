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

               appBar: AppBar(
               backgroundColor: Colors.blue,

               title: Text(''),


             ),
             body: Container(
               margin:EdgeInsets.fromLTRB(15, 0, 15, 0),
               child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[

                       Expanded(
                           flex: 1,
                           child: Container(
                                  color: Colors.blue,
                           ),
                       ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.blue,
                        ),
                      )
                    ],
               ),
             ),
           ),
    );
  }
}
