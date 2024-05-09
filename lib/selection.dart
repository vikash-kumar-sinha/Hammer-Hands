import 'package:flutter/material.dart';
import 'UiHelper.dart';
import 'mainHomePage.dart';

class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  bool first=false;
  bool second=false;
  late int selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            children: [
              Expanded(flex:2,child: SizedBox()),
              Expanded(flex:3,child: Container(decoration: BoxDecoration(color:Color(0xffC77A99),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(100),topLeft: Radius.circular(100))),))
            ],
          ),
          SafeArea(
            child: ListView(children: [
              SizedBox(height: 50,),
              Container(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hammer',style:main_heading),
                    Text('Hands',style: main_heading,)
                  ],
                ),height: 100,
              ),
              Container(height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(width:double.infinity,decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.white
                  ),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(flex:1,child: Text('Are you a worker or',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                        Expanded(flex:1,child: Text('a User',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                        Expanded(flex:5,child: Row(children: [
                          Expanded(flex:1,child: SizedBox()),
                          Expanded(flex:2,child: Container(height: 80,width: 300,decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: first?Border.all(color: Colors.blue,width: 2):Border.all(color: Colors.black87,width: 2)
                          ),child: Center(child: TextButton(style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),onPressed: (){
                            setState(() {
                              selected=0;
                              first=true;
                              second=false;
                            });
                          },child: Text('User',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),)),)),
                          Expanded(flex:1,child: SizedBox()),
                          Expanded(flex:2,child: Container(height: 80,width: 300,decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border:second?Border.all(color: Colors.blue,width: 2):Border.all(color: Colors.black87,width: 2)
                          ),child: Center(child: TextButton(style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),onPressed: (){
                            setState(() {
                              selected=1;
                              second=true;
                              first=false;
                            });
                          },child: Text('Worker',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),))),)),
                          Expanded(flex:1,child: SizedBox())
                        ],))
                      ],
                    ),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(child:ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MainHome()));},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,children: [

                  Text('Continue to Hammer Hands',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)
                ],),) ,),
              ),
              SizedBox(height: 10,)
            ],),
          ),


        ],
      ),
    );;
  }
}
