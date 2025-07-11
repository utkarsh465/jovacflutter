import 'package:flutter/material.dart';

// The main() function is the entry point for your Flutter application.
void main() {
  // runApp() inflates the given widget and attaches it to the screen.
  runApp(const MyApp());
}

// MyApp serves as the root widget for your application.
// Using MaterialApp here is standard practice as it provides
// essential app functionalities like navigation, theming, etc.
class MyApp extends StatelessWidget {
  // Add a const constructor for StatelessWidget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Title for your application (used by the OS task switcher)
      title: 'My Courses App',
      // Hides the debug banner in the top-right corner
      debugShowCheckedModeBanner: false,
      // You can define a global theme for your app here if needed
      // theme: ThemeData(
      //   primarySwatch: Colors.brown,
      //   // ... other theme properties
      // ),
      // Set the initial route for the application.
      initialRoute: '/',
      // Define the named routes for navigation.
      routes: {
        '/': (context) => CoursesPage(), // Your CoursesPage as the home screen
        // You'll need to define a CourseDetailsPage widget for this route
        '/courseDetails': (context) => const CourseDetailsPage(), // Placeholder
      },
    );
  }
}

// Your existing CoursesPage code
class CoursesPage extends StatelessWidget {
  // Add a const constructor if all fields are final (which they are here)
  const CoursesPage({super.key});

  // It's generally good practice to make class members final if they don't change
  // after initialization. Also, making the list const improves performance.
  final List<String> courses = const [
    'Flutter Basics',
    'Dart Advanced',
    'State Management',
    'Firebase Integration'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEADBD3),
      appBar: AppBar(
        backgroundColor: Colors.brown, // Consider using const Color(0xFF795548) for consistency
        title: const Text('Courses'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.brown.shade100,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                )
              ],
            ),
            child: ListTile(
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.brown[100],
                // Consider adding const to Icon if it doesn't change
                child: Icon(Icons.book, color: Colors.brown[800]),
              ),
              title: Text(
                courses[index],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.brown,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.brown),
              onTap: () {
                // Ensure '/courseDetails' route is defined in MaterialApp
                Navigator.pushNamed(context, '/courseDetails');
              },
            ),
          );
        },
      ),
    );
  }
}

// --- Placeholder Widget for Navigation ---
// You'll need to create this actual page in your project.
class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Course Details')),
      body: const Center(child: Text('Details of the selected course will appear here.')),
    );
  }
}
