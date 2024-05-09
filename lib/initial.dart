import 'package:flutter/material.dart';
class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(top:100,bottom:0,child: Container(height: 200,width: double.infinity,
              color: Colors.blue,),),
          ],
        ),
      ),
    );
  }
}
