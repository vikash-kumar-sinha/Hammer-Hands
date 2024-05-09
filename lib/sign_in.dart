
import 'package:example/mainHomePage.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'UiHelper.dart';
import 'selection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email_controller=TextEditingController();
  TextEditingController pass_controller=TextEditingController();

  SignUp(String email,String password)async{
    if(email==""&&password==""){
      UiHelper.customAlertBox(context, 'Please Enter all the fields');
    }else{
      UserCredential? usercredential;
      try{
         usercredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value) {
           //UiHelper.customAlertBox(context, 'User Created Succesfully. You can login Now! ');
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Selection()));
         });
      }
      on FirebaseAuthException catch(ex){
        UiHelper.customAlertBox(context, ex.code.toString());
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
                            Text('Sign Up',style: second_heading,),
                          ],
                        ),
                      ),
                      Expanded(flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                            Container(padding: EdgeInsets.only(left: 8),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color(0xffF5F5F5)),child: TextField(controller: email_controller,decoration: InputDecoration(hintText: 'Email',border: InputBorder.none),)),
                            Container(padding: EdgeInsets.only(left: 8),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color(0xffF5F5F5)),child: TextField(controller: pass_controller,decoration: InputDecoration(hintText: 'Password',border: InputBorder.none),obscureText: true,)),
                            Container(child: ElevatedButton(onPressed: (){SignUp(email_controller.text.toString(),pass_controller.text.toString());
                            },child: Text('Create account',style: TextStyle(color: Colors.white),),style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.blue)
                            ),),),
                            Container(child: Row(children: [
                              Text('Already have an account?'),
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                              }, child: Text('Sign In',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black87),))
                            ],),)
                          ],),
                        ),
                      )
                    ],
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(child:ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MainHome()));
                },child: Row(children: [
                  Container(height:50,width:50,child: Image.asset('images/google.png')),
                  SizedBox(width: 15,),
                  Text('Continue with Google',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black87),)
                ],),) ,),
              ),
              SizedBox(height: 10,)
            ],),
          ),


        ],
      ),
    );
  }
}
