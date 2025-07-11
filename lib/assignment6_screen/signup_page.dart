import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Good practice to use const for MyApp if it doesn't change
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Signup Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SignupPage(), // Now returns a Widget
        '/dashboard': (context) => const DashboardPage(),
      },
    );
  }
}

// Make SignupPage a StatelessWidget (or StatefulWidget if it needs to manage state)
class SignupPage extends StatelessWidget {
  const SignupPage({super.key}); // Add a const constructor

  @override
  Widget build(BuildContext context) {
    // Replace this with the actual UI for your SignupPage
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const Center(
        child: Text('This is the Signup Page!'),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")), // Use const for Text
      body: const Center(child: Text("Welcome to Dashboard!")), // Use const for Text
    );
  }
}
