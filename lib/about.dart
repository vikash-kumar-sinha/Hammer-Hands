import 'sign_in.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  String about_us="Hammer Hands is a One-Stop solution to connect Local Skilled workers & artisans with the people who need them.";
  String about_us2="We are a platform that provides best customer experience & also provide Jobs to the skilled laborers";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(flex:2,child: SizedBox()),
                  Expanded(flex: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Expanded(child: Container(child: Image.asset('images/ha1.png'))),Expanded(child: Container(child: Image.asset('images/ha2.png'),))
                      ],
                    ),
                  ),
                  Expanded(flex:1,child: SizedBox())
                ],
              ),
              Column(mainAxisAlignment:MainAxisAlignment.center,children: [
                Expanded(flex:6,child: SizedBox()),
                Expanded(flex:3,child: Container(decoration: BoxDecoration(color:Color(0xffC77A99),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(100),topLeft: Radius.circular(100))),))
              ],),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Expanded(flex:8,child: SizedBox(height: 40,)),
                    Expanded(flex:8,child: Image.asset('images/p1.png')),
                    Expanded(flex:1,child: Container(constraints:BoxConstraints(maxHeight: 10,maxWidth: 150),child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                    }, style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),child: Text('Next',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))))
                    ,Expanded(flex:1,child: SizedBox())
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text('About Us',style: TextStyle(fontFamily: 'acme',fontSize: 40),),
                    SizedBox(height: 10,),
                    Text(about_us,style: TextStyle(fontFamily: 'heebo',fontWeight: FontWeight.bold,fontSize: 15),),
                    SizedBox(height: 10,),
                    Text(about_us2,style: TextStyle(fontFamily: 'heebo',fontWeight: FontWeight.bold,fontSize: 15))
                  ],),
              )


            ],
          )
      ),),
    );;
  }
}
