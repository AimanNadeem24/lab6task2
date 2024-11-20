import 'package:flutter/material.dart';

void main() {
  runApp(AimyyGirlApp());
}

class AimyyGirlApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('My Profile')),
        ),
        body: Center(
          child: ProfileCard(),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://img.drz.lazcdn.com/static/pk/p/9eaeb1b59b5edac0f28b011f4d3d3be9.jpg_720x720q80.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'Aiman Nadeem',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'App Developer',
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 2, 51, 80),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Chase progress, not perfection; live with purpose, not hesitation',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: const Color.fromARGB(255, 3, 54, 95),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Follow up'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Hit me up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
