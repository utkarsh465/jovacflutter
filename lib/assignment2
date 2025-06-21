import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfilePage extends StatelessWidget {
  final List<String> skills = [
    'UI/UX Design',
    'User Research',
    'Prototyping',
    'Wireframing',
    'Design Systems',
    'Interaction Design',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.settings, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile circle with person icon
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/girl.jpg'),
              backgroundColor: Colors.grey,
            ),
            const SizedBox(height: 16),

            // Name and role
            const Text(
              'utkarsh raj',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Product Designer',
              style: TextStyle(color: Colors.blue),
            ),
            const Text(
              'San Francisco, CA',
              style: TextStyle(color: Colors.blue),
            ),
            const SizedBox(height: 24),

            // Skills section
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Skills',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: skills
                  .map(
                    (skill) => Chip(
                  label: Text(skill),
                  backgroundColor: Colors.grey[200],
                ),
              )
                  .toList(),
            ),
            const SizedBox(height: 24),

            // About section
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'utkarsh raj is a Product Designer with over 5 years of experience in creating user-centered designs. '
                  'She specializes in creating user-centered designs. She specializes in UI/UX design,user research, and prototyping. Apeksha is passionate about solving complex problems '
                  'and creating intuitive and engaging user experiences.',
              style: TextStyle(height: 1.5),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),

            // Contact section
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Contact',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(height: 12),
            ContactRow(
              icon: Icons.email,
              text: 'utkarsh.raj@email.com',
            ),
            ContactRow(
              icon: Icons.phone,
              text: '(555) 123-4567',
            ),
            ContactRow(
              icon: Icons.link,
              text: 'https://www.linkedin.com/in/utkarsh-raj-a91b83245/',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[700]),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}