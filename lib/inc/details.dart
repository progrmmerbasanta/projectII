import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

// our data
const url = "Basanta Karki.me";
const email = "basantakarki948@gmail.com";
const phone = "9816929844";
const location = "Damak, Jhapa";

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/basanta.jpg'),
              ),
            
              const Text(
                "Basanta Karki ",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                ),
              ),
              Text(
                "Passionate Learner",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey[200],
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Source Sans Pro"),
              ),
              const SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              
              // we will be creating a new widget name info carrd

              InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
              InfoCard(text: url, icon: Icons.web, onPressed: () async {}),
              InfoCard(
                  text: location,
                  icon: Icons.location_city,
                  onPressed: () async {}),
              InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
            ],
          ),
        ));
  }
}