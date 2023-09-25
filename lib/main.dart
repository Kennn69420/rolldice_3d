import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/rolldice.dart';
void main(){
  runApp(RollDiceApp());
}
class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rolldice_Screen(),
    );
  }
}