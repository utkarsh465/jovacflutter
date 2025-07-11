import 'package:flutter/material.dart';
void main(){
  runApp(Contact());
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            title: const Text(
              "Contact",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            centerTitle: true,
          ),
          body:SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("We'd love to hear from you! Whether you have a question, feedback, or just want to say hello please don't hesitate to reach out.", style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 20),
                  const Text("Contact Information", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600), textAlign: TextAlign.start),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Email", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("support@example.com", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Phone", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("+1 (555) 123-4567", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Address", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("123, Main Street, Anytown, USA", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text("Contact Form", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600), textAlign: TextAlign.start),
                  const SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 450,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Your Name", style: TextStyle(fontSize: 16),),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: 450,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("Your Name", style: TextStyle(fontSize: 16),),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 150,
                    width: 450,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20, top: 16),
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("Message...", style: TextStyle(fontSize: 16),),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 40,
                    width: 400,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade600,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("Send Message", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                  const SizedBox(height: 24),
                  const Text("Follow Us", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), textAlign: TextAlign.start),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(height: 40, width: 40, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(50)),  child: Icon(Icons.facebook_outlined),),
                      Container(height: 40, width: 40, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(50)),  child: Icon(Icons.flight),),
                      Container(height: 40, width: 40, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(50)),  child: Icon(Icons.facebook_outlined),),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          )
      ),
    );
  }
}