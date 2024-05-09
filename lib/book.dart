import 'UiHelper.dart';
import 'package:flutter/material.dart';
import 'address.dart';

class BookNow extends StatefulWidget {
  const BookNow({super.key,required this.worker_details});
  final List<String> worker_details;

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(flex:1,child: SizedBox()),
              Expanded(flex:2,child: Container(decoration: BoxDecoration(
                  color: Color(0xffE0B2D0),
                  borderRadius: BorderRadius.all(Radius.circular(50))
              ),))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(children: [
              Expanded(flex: 1,child: SizedBox()),
              Expanded(flex: 5,
                child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffEEEEEE)
                ),child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('${widget.worker_details[0]}'),
                      Text('${widget.worker_details[1]}',style: workerDetails,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children:[
                        Text('Years of Experiance : ',style: workerDetails,),
                        Text('${widget.worker_details[3]}',style: workerDetails,)
                      ],),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                        Row(children:[
                          Icon(Icons.star,color: Colors.yellow,),
                          Text('Avg. Rating : ',style: workerDetails,),
                        ] ),
                        Text('${widget.worker_details[2]}',style: workerDetails,)


                      ],),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Service offered: ',style: workerDetails,),
                          Column(mainAxisAlignment: MainAxisAlignment.end,children: [
                            Text('${widget.worker_details[4]}',style: workerDetails,)
                          ],)
                        ],
                      )
                    ],
                  ),
                ),),
              ),
              Expanded(flex:1,child: SizedBox()),
              Expanded(flex: 3,
                child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffEEEEEE),

                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Payment Summary'),
                        SizedBox(height: 15,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                          Text('Platform fee'),
                          Text('\u{20B9} 4.25')
                        ],),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                          Text('GST'),
                          Text('\u{20B9} 0.75')
                        ],),
                        SizedBox(height: 10,),
                        SizedBox(child: Divider(thickness: 2,color: Colors.black87,),),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                          Text('Total'),
                          Text('\u{20B9} 5')
                        ],)
                      ],
                    ),
                  ),),
              ),
              Expanded(flex:1,child: SizedBox()),
              Expanded(flex: 2,child: Container(height: 50,constraints: BoxConstraints(maxHeight: 50,minHeight: 50),child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Address()));
              },child: Text('Book Now',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),))
              ,Expanded(flex:1,child: SizedBox()),
            ],),
          )
        ],
      ),
    );
  }
}
