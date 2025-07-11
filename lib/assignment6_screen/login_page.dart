import 'package:flutter/material.dart';

// The main() function is the entry point for your Flutter application.
void main() {
  // runApp() takes your root widget and makes it the core of the widget tree.
  runApp(const MyApp());
}

// MyApp will be the root widget of your application.
// It's standard practice to use MaterialApp here to provide
// essential app functionalities like theming, navigation, etc.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hides the debug banner that appears in the top-right corner by default.
      debugShowCheckedModeBanner: false,
      title: 'Login Demo', // Title for your application (used by the OS).
      // theme: ThemeData( // You can define a global theme here if needed.
      //   primarySwatch: Colors.blue,
      // ),
      initialRoute: '/', // Specifies the initial route when the app starts.
      routes: {
        // The '/' route will display the LoginPage.
        '/': (context) => LoginPage(), // Consider adding 'const' if LoginPage can be const
        // Define other routes your app will use.
        // For example, if you have a DashboardPage and SignupPage:
        '/dashboard': (context) => const DashboardPage(), // Placeholder
        '/signup': (context) => const SignupPage(),       // Placeholder
      },
    );
  }
}

// Your existing LoginPage code:
class LoginPage extends StatelessWidget {
  // It's good practice to add a key to the constructor.
  // If this widget's state might change or if it has non-final fields,
  // it should be a StatefulWidget. However, for just controllers,
  // StatelessWidget can be acceptable, but be mindful of controller disposal.
  // For simplicity here, keeping as StatelessWidget.
  LoginPage({super.key}); // Added key

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8BBAE), // Added const
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock, size: 80, color: Colors.white),
            const SizedBox(height: 20),
            const Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              "Login to continue",
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: const Icon(Icons.email_outlined), // Added const
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.lock_outline), // Added const
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      // Make sure '/dashboard' route is defined in MaterialApp
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4C372E), // Dark brown, added const
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white, // Text color is white, not purple as in comment
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      // Make sure '/signup' route is defined in MaterialApp
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(color: Colors.brown),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder for DashboardPage - Create this widget in your project
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: const Center(child: Text('Welcome to the Dashboard!')),
    );
  }
}

// Placeholder for SignupPage - Create this widget in your project
class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: const Center(child: Text('This is the Signup Page.')),
    );
  }
}
