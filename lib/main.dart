import 'package:flutter/material.dart';
void main(){
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          centerTitle: true,
          actions: const [
            Icon(Icons.settings),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Welcome to Our App",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  child: const Text(
                    "Explore the features and information we offer. Stay updates with the latest news and insights.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: const Text("App Highlights",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.explore_outlined),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Explore",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "Discover new content and features",
                          style: TextStyle(
                              fontSize: 14, color: Colors.indigo.shade400),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.mail_outline),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Contact",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Get in touch with us",
                          style: TextStyle(
                              fontSize: 14, color: Colors.indigo.shade400),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}