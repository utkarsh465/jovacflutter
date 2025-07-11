import 'package:flutter/material.dart';

// The main() function is the entry point of every Flutter application.
void main() {
  // runApp() inflates the given widget and attaches it to the screen.
  runApp(const MyApp());
}

// MyApp serves as the root widget for your application.
// It's standard practice to use MaterialApp here to provide
// fundamental app structures like navigation, theming, etc.
class MyApp extends StatelessWidget {
  // Const constructor for StatelessWidget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This title is used by the device's task switcher.
      title: 'My Dashboard App',
      // Hides the "debug" banner in the top-right corner.
      debugShowCheckedModeBanner: false,
      // You can define a global theme for your app here if needed.
      // theme: ThemeData(
      //   primarySwatch: Colors.brown,
      //   // ... other theme properties
      // ),
      // Set the initial route for the application.
      initialRoute: '/',
      // Define the named routes for navigation.
      routes: {
        '/': (context) => DashboardPage(), // Your DashboardPage as the home screen
        '/profile': (context) => const ProfilePage(), // Placeholder for ProfilePage
        '/courses': (context) => const CoursesPage(), // Placeholder for CoursesPage
      },
    );
  }
}

// Your existing DashboardPage code
class DashboardPage extends StatelessWidget {
  // It's good practice to add a const constructor if the widget has no mutable state
  const DashboardPage({super.key}); // Added const constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5ECE8), // light brown background
      appBar: AppBar(
        backgroundColor: const Color(0xFF6F4E37), // darker brown
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Only pop if there's a route to pop to.
            // If DashboardPage is the first page, canPop will be false.
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
        title: const Text("Dashboard", style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              // Ensure 'assets/image/content.png' is defined in pubspec.yaml
              // and the file exists in the correct path.
              child: Image.asset(
                'assets/image/content.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Welcome back,",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            const SizedBox(height: 4),
            const Row(
              children: [
                Text(
                  "steve rogers",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.brown),
                ),
                SizedBox(width: 8),
                Text("👋", style: TextStyle(fontSize: 22)),
              ],
            ),
            const SizedBox(height: 28),

            // Profile Card
            GestureDetector(
              onTap: () {
                // Ensure '/profile' route is defined in MaterialApp
                Navigator.pushNamed(context, '/profile');
              },
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.brown[100],
                        child: const Icon(Icons.person, color: Colors.brown),
                      ),
                      const SizedBox(width: 16),
                      const Expanded( // Added const
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("View Profile", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.brown)),
                            SizedBox(height: 4),
                            Text("See and edit your personal information.", style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Courses Card
            GestureDetector(
              onTap: () {
                // Ensure '/courses' route is defined in MaterialApp
                Navigator.pushNamed(context, '/courses');
              },
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.brown[100],
                        child: const Icon(Icons.menu_book_rounded, color: Colors.brown),
                      ),
                      const SizedBox(width: 16),
                      const Expanded( // Added const
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("View Courses", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.brown)),
                            SizedBox(height: 4),
                            Text("Continue learning or explore new topics.", style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// --- Placeholder Widgets for Navigation ---
// You'll need to create these actual pages in your project.

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(child: Text('Profile Page Content')),
    );
  }
}

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Courses')),
      body: const Center(child: Text('Courses Page Content')),
    );
  }
}
