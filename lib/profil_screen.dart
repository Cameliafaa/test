import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: const Color.fromARGB(255, 6, 92, 240),
      ),
      body: ListView(
        padding: EdgeInsets.all(26),
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Pastikan path gambar sudah benar dan gambar sudah ada di folder assets/img/
              Container(
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/img/view.jpeg'), // Pastikan path ini benar
                    fit: BoxFit.cover, // Mengatur gambar agar mengisi area dengan baik
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/img/profile.jpeg', // Pastikan path ini benar
                    width: 190,  // Ukuran lingkaran
                    height: 190, // Ukuran lingkaran
                    fit: BoxFit.contain, // Gambar akan diperkecil agar tidak terpotong
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 231, 235, 238),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Camelia Fajaryani',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Saat ini saya salah satu Mahasiswa di Universitas Pamulang.',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    _incrementCounter();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Counter value: $_counter')),
                    );
                  },
                  child: Text('Click me'),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
