import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'workers.dart';
//import 'initial.dart';
import 'about.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool is_loading=true;
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(seconds: 5),(){
      setState(() {
        is_loading=false;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(flex:1,child: SizedBox()),
                Expanded(flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Expanded(child: Container(child: Image.asset('images/ha1.png'))),Expanded(child: Container(child: Image.asset('images/ha2.png'),))
                    ],
                  ),
                ),
                Expanded(flex:6,child: SizedBox())
              ],
            ),
            Column(mainAxisAlignment:MainAxisAlignment.center,children: [
              Expanded(flex:2,child: SizedBox()),
              Expanded(flex:3,child: Container(decoration: BoxDecoration(color:Color(0xffC77A99),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(100),topLeft: Radius.circular(100))),))
            ],),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Welcome to',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                      Text('Hammer Hand',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Image.asset('images/p1.png'),
                  ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                  }, style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),child: Text('Next',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))

                ],
              ),
            )


          ],
        )
    ),);
  }
}
