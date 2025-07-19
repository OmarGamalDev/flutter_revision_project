import 'package:flutter/material.dart';
import 'package:flutter_revision_project/Business%20Card%20App/widgets/custom_widget.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b475e),
      body: Column(
        children: [
          SizedBox(height: 100),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 152,
            child: CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage("assets/tharwat.png"),
            ),
          ),
          SizedBox(height: 7),
          Text(
            "Thrwat Samy",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "Pacifico",
            ),
          ),
          SizedBox(height: 7),
          Text(
            "Flutter Developer",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
          Divider(thickness: 1, color: Colors.grey, indent: 20, endIndent: 20),
          SizedBox(height: 20),
          CustomWidget(text: "+20 01557906709", icon: Icon(Icons.call)),
          SizedBox(height: 20),
          CustomWidget(
            text: "omarthefirst6206@gmail.com",
            icon: Icon(Icons.email),
          ),
          SizedBox(height: 20),
          Card(
            margin: EdgeInsets.all(9),
            child: ListTile(
              leading: Icon(Icons.call),
              title: Text("El Mahallah Alkobra"),
            ),
          ),
        ],
      ),
    );
  }
}
