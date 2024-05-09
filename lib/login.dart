
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:example/selection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'UiHelper.dart';
//import 'selection.dart';
//import 'package:firebase_core/firebase_core.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email_controller=TextEditingController();
  TextEditingController pass_controller=TextEditingController();

  login(String email,String password)async{
    if(email==""&&password==""){
      UiHelper.customAlertBox(context, 'Please enter all the fields');
    }else{
      UserCredential? usercrediantial;
      try{
        usercrediantial=await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value) {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Selection()));
        });
      }
      on FirebaseAuthException catch(ex){
        return UiHelper.customAlertBox(context, ex.code.toString());
      }
    }
  }

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
                  ),child: Column(
                    children: [
                      Expanded(flex: 1,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sign In',style: second_heading,),
                          ],
                        ),
                      ),
                      Expanded(flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                            Container(padding: EdgeInsets.only(left: 8),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color(0xffF5F5F5)),child: TextField(controller: email_controller,decoration: InputDecoration(hintText: 'Email',border: InputBorder.none),)),
                            Container(padding: EdgeInsets.only(left: 8),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color(0xffF5F5F5)),child: TextField(controller: pass_controller,decoration: InputDecoration(hintText: 'Password',border: InputBorder.none),obscureText: true,)),
                            Container(child: ElevatedButton(onPressed: () {
                              login(email_controller.text.toString(), pass_controller.text.toString());
                            },child: Text('Login',style: TextStyle(color: Colors.white),),style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.blue)
                            ),),),
                            Container(child: Row(children: [
                              Text('Don\'t have account? ' ),
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                              }, child: Text('Sign Up',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black87),))
                            ],),)
                          ],),
                        ),
                      )
                    ],
                  ),),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Container(child:ElevatedButton(onPressed: (){},child: Row(children: [
              //     Container(height:50,width:50,child: Image.asset('images/google.png')),
              //     SizedBox(width: 15,),
              //     Text('Continue with Google',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black87),)
              //   ],),) ,),
              // ),
              SizedBox(height: 10,)
            ],),
          ),


        ],
      ),
    );
  }
}
