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
      title: 'Course Details App',
      // Hides the "debug" banner in the top-right corner.
      debugShowCheckedModeBanner: false,
      // You can define a global theme for your app here if needed.
      // theme: ThemeData(
      //   primarySwatch: Colors.brown,
      //   // ... other theme properties
      // ),
      // Set CourseDetailsPage as the home screen.
      // In a real app, you would likely navigate to this page.
      home: const CourseDetailsPage(),
    );
  }
}

// Your existing CourseDetailsPage code
class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEADBD3),
      appBar: AppBar(
        // It's good practice to make colors const if they don't change
        backgroundColor: Colors.brown, // Or const Color(0xFF795548)
        title: const Text('Course Details'),
        centerTitle: true,
        // If this page is always the home page, an automatic back arrow
        // might not appear. If you navigate to it, it usually does.
        // You can explicitly add one if needed, or rely on your custom button.
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course Title
            const Text(
              'Flutter Basics',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 20),

            // Course Description
            const Text(
              'Learn the fundamentals of Flutter including widgets, layouts, navigation, and more in this beginner-friendly course. You will build beautiful UIs and understand how to use Flutter’s core libraries to develop apps effectively.',
              style: TextStyle(fontSize: 16, height: 1.5), // Consider adding const to TextStyle
            ),

            const SizedBox(height: 30),

            // Details Card
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown.shade100,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Duration: 4 weeks',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)), // Consider const
                  SizedBox(height: 8),
                  Text('Level: Beginner',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)), // Consider const
                  SizedBox(height: 8),
                  Text('Includes: Assignments, Quizzes, Certificate',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)), // Consider const
                ],
              ),
            ),

            const SizedBox(height: 40),

            // Back Button
            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.arrow_back, color: Colors.white), // Changed icon color to white for better contrast
                label: const Text('Back', style: TextStyle(color: Colors.white)), // Changed text color to white
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5C4033), // Dark brown
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  // This will only work if CourseDetailsPage was pushed onto the navigator stack.
                  // If it's the home page, Navigator.canPop(context) will be false.
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
