import 'package:flutter/material.dart';
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({ Key? key }) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final  formkey = GlobalKey<FormState>();
final firstNameEditingController = TextEditingController();
final secondNameEditingController = TextEditingController();
final emailNameEditingController = TextEditingController();
final passwordNameEditingController = TextEditingController();
final confirmNameEditingController = TextEditingController();

  // ignore: prefer_typing_uninitialized_variables
  var emailEditingController;

  get passwordEditingController => null;

  get confirmPasswordEditingController => null;
  @override
  Widget build(BuildContext context) {
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType:TextInputType.name  ,
      onSaved:(vaue)
      {
        firstNameEditingController.text =vaue!;
      },
    textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.account_circle),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "First Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
        final secondNameField = TextFormField(
      autofocus: false,
      controller: secondNameEditingController,
      keyboardType:TextInputType.name ,
      onSaved:(vaue)
      {
        secondNameEditingController.text =vaue!;
      },
    textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.account_circle),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Last Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
        final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved:(vaue)
      {
        firstNameEditingController.text =vaue!;
      },
    textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.mail),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
        final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText:true ,
      onSaved:(vaue)
      {
        firstNameEditingController.text =vaue!;
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
        final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText:true ,
      onSaved:(vaue)
      {
        confirmPasswordEditingController.text =vaue!;
      },
    textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: " Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
         final signUpButton= Material(
          elevation: 5,
          borderRadius:BorderRadius.circular(30),
          color:const Color.fromARGB(255, 37, 33, 243),
          child:MaterialButton(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
            minWidth:MediaQuery.of(context).size.width,
         onPressed:() {},
         child: const Text(
           "SignUp",
           textAlign:TextAlign.center,
         style: TextStyle(
           fontSize:20, color:Colors.white,fontWeight:FontWeight.bold),
         )),
          );
         return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       backgroundColor:Colors.transparent, 
       elevation: 0,
       leading: IconButton(
         icon:const Icon(Icons.arrow_back, color:Colors.blue),
         onPressed: (){
           Navigator.of(context).pop();
         }
         ,
       ),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child:Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              key: formkey,
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
               const SizedBox(height:45),
               firstNameField,
              const  SizedBox(height:20),
              secondNameField,
              const  SizedBox(height: 20),
               emailField,
               const SizedBox(height:20),
               passwordField,
              const  SizedBox(height:20),
               confirmPasswordField,
               const SizedBox(height:20),
               signUpButton,
               const SizedBox(height:15,
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

    