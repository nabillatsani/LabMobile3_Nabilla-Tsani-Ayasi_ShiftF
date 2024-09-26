import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink[100], // Background soft pink
        elevation: 0, // Hilangkan bayangan
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink[100],  // Soft pink untuk drawer header
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.pink[200],
                    radius: 30,
                    child: Text(
                      'NT', // Inisial pengguna
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Nabilla Tsani', style: TextStyle(fontSize: 16, color: Colors.black)),
                  Text('nabilla58@gmail.com', style: TextStyle(fontSize: 14, color: Colors.grey[700])),
                ],
              ),
            ),
            ListTile(
              title: Text('Home', style: TextStyle(color: Colors.black, fontSize: 16)),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('Profile', style: TextStyle(color: Colors.black, fontSize: 16)),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              title: Text('Logout', style: TextStyle(color: Colors.black, fontSize: 16)),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setBool('isLoggedIn', false);
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome Back,', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('Here’s what’s happening today.', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: <Widget>[
                  _buildSoftPinkCard('Events'),
                  _buildSoftPinkCard('Community'),
                  _buildSoftPinkCard('Shop'),
                  _buildSoftPinkCard('Settings'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSoftPinkCard(String title) {
    return Card(
      color: Colors.pink[50],  // Soft pink untuk card
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          // Aksi jika card ditekan
        },
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
