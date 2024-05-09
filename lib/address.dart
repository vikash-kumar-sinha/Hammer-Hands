import 'UiHelper.dart';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
//import 'package:phonepe_payment_sdk/phonepe_payment_sdk.dart';
import 'dart:convert';


class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  TextEditingController house_no_c=TextEditingController();
  TextEditingController landmark_c=TextEditingController();
  TextEditingController name_c=TextEditingController();
  TextEditingController phone_c=TextEditingController();
  TextEditingController area_c=TextEditingController();
  TextEditingController pincode_c=TextEditingController();

  final orderIdMain=1;

  String environment="SANDBOX";
  String appId="";
  String merchantId="PGTESTPAYUAT";
  bool enableLogging=true;
  String checkSum="";
  String saltKey="099eb0cd-02cf-4e2a-8aca-3e6c6aff0399";
  String saltIndex="1";
  String callbackUrl="www.google.com";
  String body="";
  Object? result;
  String apiEndPoint = "/pg/v1/pay";

  getCheckSum(){
    final requestedData={
      "merchantId": merchantId,
      "merchantTransactionId": orderIdMain.toString(),
      "merchantUserId": "90223250",
      "amount": 10000,
      "mobileNumber": "9999999999",
      "callbackUrl": callbackUrl,
      "paymentInstrument": {
        "type": "PAY_PAGE"}
    };
    String base64body=base64.encode(utf8.encode(json.encode(requestedData)));
    checkSum= '${sha256.convert(utf8.encode(base64body+apiEndPoint+saltKey)).toString()}###$saltIndex';
    return base64body;

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //phonePeInit();
    body=getCheckSum().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex:2,child: SizedBox()),
          Expanded(flex: 12,child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)),color: Color(0xffE0B2D0)),child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListView(
              children: [
                Container(child: Center(child: Text('Address',style: main_heading,)),),
                SizedBox(height: 20,),
                Container(decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color:Color(0xffD9D9D9)),child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(controller: area_c,decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Area',
                  ),),
                ),),
                SizedBox(height: 20,),
                Container(decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color:Color(0xffD9D9D9)),child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(controller: house_no_c,decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Flat/House No.',
                  ),),
                ),),
                SizedBox(height: 20,),
                Container(decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color:Color(0xffD9D9D9)),child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(controller: landmark_c,decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Landmark',
                  ),),
                ),),
                SizedBox(height: 20,),
                Container(decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color:Color(0xffD9D9D9)),child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(controller: phone_c,decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Phone',
                  ),),
                ),),
                SizedBox(height: 20,),
                Container(decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color:Color(0xffD9D9D9)),child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(controller: pincode_c,decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Pincode',
                  ),),
                ),),
                SizedBox(height: 40,),
                Container(height: 50,child: ElevatedButton(onPressed: (){
                  // startPgTransaction();
                },child: Text('Save and proceed to pay',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),),)
              ],
            ),
          ),))
        ],
      ),
    );
  }
  // void phonePeInit() {
  //   PhonePePaymentSdk.init(environment, appId, merchantId, enableLogging)
  //       .then((val) => {
  //     setState(() {
  //       result = 'PhonePe SDK Initialized - $val';
  //     })
  //   })
  //       .catchError((error) {
  //     handleError(error);
  //     return <dynamic>{};
  //   });
  //
  // }
  // void startPgTransaction() async{
  //   PhonePePaymentSdk.startTransaction(body, callbackUrl, checkSum, "").then((response) => {
  //     setState(() {
  //       if (response != null)
  //       {
  //
  //         String status = response['status'].toString();
  //         String error = response['error'].toString();
  //
  //         if (status == 'SUCCESS')
  //         {
  //
  //           result="Flow Completed - Status: Success!";
  //           UiHelper.customAlertBox(context, "purchase successful and orderid is$orderIdMain");
  //           //storeAddress();
  //           //pushOrderInHistory();
  //
  //         }
  //         else {
  //           result= "Flow Completed - Status: $status and Error: $error";
  //           UiHelper.customAlertBox(context, "error: $error");
  //           Navigator.pop(context);
  //         }
  //       }
  //       else {
  //         result="Flow Incomplete";
  //         UiHelper.customAlertBox(context, "Transaction failed");
  //       }
  //     })
  //   }).catchError((error) {
  //     // handleError(error)
  //     return <dynamic>{};
  //   });
  // }
  // void handleError(error) {
  //   setState(() {
  //     result={"Error":error};
  //   });
  //
  // }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

