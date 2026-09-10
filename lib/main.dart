import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar with green check badge
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade100,
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/profile.jpg',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    right: 2,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.check_circle,
                          color: Color(0xFF2ECC40), size: 26),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            const Divider(color: Colors.black87, thickness: 1),
            const SizedBox(height: 28),

            // Name
            const Text(
              'Name',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(height: 4),
            const Text('Diluka',
                style: TextStyle(color: Colors.black87, fontSize: 15)),
            const SizedBox(height: 22),

            // Email
            const Text(
              'Email',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(height: 4),
            const Row(
              children: [
                Icon(Icons.email, color: Colors.black87, size: 16),
                SizedBox(width: 6),
                Text('diluka.w@nsbm.ac.lk',
                    style: TextStyle(color: Colors.black87, fontSize: 15)),
              ],
            ),
            const SizedBox(height: 22),

            // Points
            const Text(
              'Points',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(height: 4),
            const Row(
              children: [
                Icon(Icons.star, color: Colors.black87, size: 16),
                SizedBox(width: 6),
                Text('0', style: TextStyle(color: Colors.black87, fontSize: 15)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          // TODO: add action for the + button
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}