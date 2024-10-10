import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/profile_picture.png'), // Ganti dengan path gambar profil
            ),
            const SizedBox(height: 20),
            const Text(
              "John Doe",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Software Developer",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.email, color: Colors.teal),
                    SizedBox(height: 5),
                    Text("Email"),
                    Text("john.doe@email.com"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.phone, color: Colors.teal),
                    SizedBox(height: 5),
                    Text("Phone"),
                    Text("+123 456 7890"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol di tekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
