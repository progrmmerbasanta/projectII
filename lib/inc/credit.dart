import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:shopkeeper_khata/inc/bottombar.dart';

class Credit extends StatefulWidget {
  const Credit({Key? key}) : super(key: key);

  @override
  State<Credit> createState() => _Credit();
}

class _Credit extends State<Credit> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.grey.shade900,
                    Colors.grey.shade700,
                    Colors.grey.shade500,
                  ])),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        // #signup_text
                        Text(
                          "CREDIT DETAILS",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 32.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        // #welcome
                        Text(
                          "Welcome",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),

                      // #text_field
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        height: MediaQuery.of(context).size.height*0.3,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 20,
                                  spreadRadius: 10,
                                  offset: const Offset(0, 10))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "SN",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "CREDITER NAME",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "PRICE",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                            Divider(
                              thickness: 0.5,
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "DATE",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),

                      // #signup_button
                      MaterialButton(
                        onPressed: (){},
                        height: 45,
                        minWidth: 240,
                        shape: const StadiumBorder(),
                        color: Colors.grey.shade700,
                        child: const Text(
                          "SAVE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      // #buttons(facebook & github)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: const StadiumBorder(),
                            height: 45,
                            minWidth: MediaQuery.of(context).size.width*0.28,
                            child: const Text(
                              "INSERT",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.red,
                            shape: const StadiumBorder(),
                            height: 45,
                            minWidth: MediaQuery.of(context).size.width*0.28,
                            child: const Text(
                              "UPDATE",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.black,
                            shape: const StadiumBorder(),
                            height: 45,
                            minWidth: MediaQuery.of(context).size.width*0.28,
                            child: const Text(
                              "DELETE",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}