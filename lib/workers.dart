import 'UiHelper.dart';
import 'package:flutter/material.dart';
import 'book.dart';


class Workers extends StatefulWidget {
  const Workers({super.key});

  @override
  State<Workers> createState() => _WorkersState();
}

class _WorkersState extends State<Workers> {

  List<List<String>> l=[['images/w1.png','Suresh','4.5','2','Carpentary','200','466114','BookNow()'],['images/w2.png','Rajesh','4','2','Carpentary,Plumbing,Electrician','220','466144']];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Hammer Hands',style: TextStyle(fontFamily: 'acme',fontWeight: FontWeight.bold,fontSize: 30),),backgroundColor: Colors.blue,foregroundColor: Colors.white,),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(flex:1,child: Text('8 Carpenters near you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              Expanded(flex:12,child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all((Radius.circular(30))),color: Color(0xffE0B2D0)),child: ListView.builder(
                  itemCount: l.length+6,
                  itemBuilder:(context,index){
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(height:300,width:double.infinity,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Color(0xffEEEEEE),),
                        child: Column(
                          children: [
                            Expanded(flex: 2,
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    child: Image.asset('${l[0][0]}',fit: BoxFit.cover,),
                                  ),
                                  Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                                    Text('${l[0][1]}',style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('Exp: ${l[0][3]}')
                                  ],),
                                  Row(
                                    children: [
                                      Text('${l[0][2]}'),
                                      Icon(Icons.star),
                                    ],
                                  ),

                                  Icon(Icons.bookmark)
                                ],),
                            ),
                            Expanded(flex:3,child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Experts in :- ${l[0][4]}',style: workerDetails,),
                                  Text('Visit Charge :- ${l[0][5]}',style: workerDetails,),
                                  Text('Pincode :- ${l[0][6]}',style: workerDetails,)
                                ],
                              ),
                            )),
                            Expanded(flex: 1,child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>BookNow(worker_details: l[0],)));
                            }, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),child: Text('Book Now',style: TextStyle(color: Colors.white,),))))
                            ,Expanded(flex:1,child: SizedBox())
                          ],
                        ),),
                    );
                  }
              ),))
            ],
          )
        ],
      ),
    );
  }
}
