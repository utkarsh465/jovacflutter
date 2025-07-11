import 'package:flutter/material.dart';
void main(){
  runApp(About());
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: const Text(
            "About",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                width: 500,
                child: const Text("Our Mission",
                    style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
              ),
              SizedBox(
                height: 140,
                width: 400,
                child: const Text(
                    "Our mission is to provide users with a comprehensive and reliable source of information on a wide range of topics. We strive to make knowledge accessible to everyone, fostering curiosity and lifelong learning.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start),
              ),
              SizedBox(
                height: 50,
                width: 500,
                child: const Text("Background",
                    style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
              ),
              SizedBox(
                height: 160,
                width: 400,
                child: const Text(
                    "This app was developed by a team of passionate individuals dedicated to creating a valuable resource for users seeking information. We believe in the power of knowledge to empower individuals and contribute to a more informed society.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start),
              ),
              SizedBox(
                height: 50,
                width: 500,
                child: const Text("Contact Us",
                    style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
              ),
              SizedBox(
                height: 160,
                width: 400,
                child: const Text(
                    "If you have any questions, feedback, or suggestions, please don't hesitate to reach out to us at support@infoapp.com. We value your input and are committed to continuously improving our app.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start),
              )
            ],
          ),
        ),
      ),
    );
  }
}