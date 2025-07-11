import 'package:flutter/material.dart';

// This is your main entry point for the application.
void main() {
  // runApp() inflates the given widget and attaches it to the screen.
  runApp(const MyApp());
}

// MyApp is the root widget of your application.
// It's good practice for this to be a MaterialApp (or CupertinoApp)
// to provide core app functionality like theming and navigation.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // You can set a title for your app, which is used by the OS.
      title: 'Profile App',
      // Hide the debug banner in the top-right corner.
      debugShowCheckedModeBanner: false,
      // Set the ProfilePage as the home screen of your application.
      home: ProfilePage(),
      // You can also define a theme for your app here if needed.
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   // ... other theme properties
      // ),
    );
  }
}

// Your existing ProfilePage code
class ProfilePage extends StatelessWidget {
  // It's good practice to add a const constructor to StatelessWidget
  // if all its fields are final.
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEADBD3),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Banner Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                // Make sure 'assets/image/content.png' exists in your pubspec.yaml
                // and the actual file is in the correct path in your project.
                child: Image.asset('assets/image/content.png'),
              ),

              const SizedBox(height: 30),

              // Card with profile info
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.brown.shade100,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      // Make sure 'assets/image/my.jpg' exists in your pubspec.yaml
                      // and the actual file is in the correct path.
                      backgroundImage: AssetImage('assets/image/my.jpg'),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'steve rogers',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.brown),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'steve@example.com',
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 16),
                    Divider(color: Colors.grey[300], thickness: 1),
                    const SizedBox(height: 12),

                    // Stats Row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // Consider making the children of this Row const if they don't change
                        children: const [
                          Column(
                            children: [
                              Text('12', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown)),
                              SizedBox(height: 4),
                              Text('Courses', style: TextStyle(fontSize: 13)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('5', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown)),
                              SizedBox(height: 4),
                              Text('Badges', style: TextStyle(fontSize: 13)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('23', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown)),
                              SizedBox(height: 4),
                              Text('Rank', style: TextStyle(fontSize: 13)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Back Button
              ElevatedButton.icon(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                label: const Text("Back", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5C4033),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  // This will only work if ProfilePage was pushed onto the navigator stack.
                  // If it's the home page, Navigator.canPop(context) will be false.
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
