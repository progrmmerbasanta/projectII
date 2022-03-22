import 'package:flutter/material.dart';
import 'package:shopkeeper_khata/screens/home_screen.dart';
import 'package:shopkeeper_khata/screens/registration_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen ({ Key? key }) : super(key: key);
  @override
 _LoginScreenState createState() =>_LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController =  TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField( 
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved:(vaue)
      {
        emailController.text =vaue!;
      },
      textInputAction:TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon:Icon(Icons.mail),
        contentPadding:EdgeInsets.fromLTRB(20,15,20,15),
        hintText: "Email",
        border:OutlineInputBorder(
        ),
    )) ;
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText:true ,
      onSaved:(vaue)
      {
        passwordController.text =vaue!;
      },
    textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
        // ignore: non_constant_identifier_names
        final LoginButton= Material(
          elevation: 5,
          borderRadius:BorderRadius.circular(30),
          color:const Color.fromARGB(255, 37, 33, 243),
          child:MaterialButton(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
            minWidth:MediaQuery.of(context).size.width,
         onPressed:() {
            Navigator.push(
                      context,
                       MaterialPageRoute(
                         builder:(context)=>
                     const HomeScreen())); 
                  
         },
         child: const Text("Login" ,
         textAlign:TextAlign.center,
         style: TextStyle(
           fontSize:20, color:Colors.white,fontWeight:FontWeight.bold),
         )),
          );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child:Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              key: _formkey,
         child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment:CrossAxisAlignment.center ,
             children:<Widget>[
               SizedBox(
                 height:250,
                child:Image.asset(
                  "assets/Mero Shop.png",
                fit: BoxFit.contain,
                )),
                const SizedBox(height: 45),
               emailField,
               const SizedBox(height:25),
               passwordField,
              const  SizedBox(height:35),
               LoginButton,
               const SizedBox(height:15),
               Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children:<Widget> [
                  const Text("Don't have an account?"),
                  GestureDetector(onTap:() {
                    Navigator.push(
                      context,
                       MaterialPageRoute(
                         builder:(context)=>
                     const RegistrationScreen())); 
                  },
                  child:  const Text("Signup", 
                  style:TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
                  ),
                  )  
                ],

               )
             ],
         ), 
            ),
          ),
        ),
        ),
      ),
    );
  }
}


