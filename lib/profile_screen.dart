import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink[100], // Background soft pink
        elevation: 0, // Hilangkan bayangan
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Pusatkan konten secara vertikal
            crossAxisAlignment: CrossAxisAlignment.center, // Pusatkan konten secara horizontal
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.pink[200],
                child: Text(
                  'NT', // Inisial pengguna
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Profile Information',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Name: Nabilla',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 8),
              Text(
                'Email: nabilla58@gmail.com',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 8),
              Text(
                'Role: User',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Aksi untuk mengedit profil
                },
                style: ElevatedButton.styleFrom(
                ),
                child: Text('Edit Profile', style: TextStyle(color: Colors.pink[200])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
