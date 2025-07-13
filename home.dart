import 'package:flutter/material.dart';

void main() {
  runApp(MatrimonyApp());
}

class MatrimonyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matrimony App'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HomeCard(
              title: 'Add User',
              icon: Icons.person_add,
              color: Colors.blue,
              onTap: () {
                // Add user functionality
              },
            ),
            SizedBox(height: 16),
            HomeCard(
              title: 'User List',
              icon: Icons.list,
              color: Colors.green,
              onTap: () {
                // Navigate to user list
              },
            ),
            SizedBox(height: 16),
            HomeCard(
              title: 'Favorite Users',
              icon: Icons.favorite,
              color: Colors.red,
              onTap: () {
                // Navigate to favorite users
              },
            ),
            SizedBox(height: 16),
            HomeCard(
              title: 'About Us',
              icon: Icons.info,
              color: Colors.orange,
              onTap: () {
                // Navigate to about us
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const HomeCard({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color.withOpacity(0.1),
          ),
          child: Row(
            children: [
              Icon(icon, size: 40, color: color),
              SizedBox(width: 16),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
