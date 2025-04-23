import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  int _counter = 0;

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: Text("Konfirmasi"),
            content: Text("Yakin ingin menambah counter?"),
            actions: [
              TextButton(
                child: Text("Batal"),

                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: Text("Ya"),
                onPressed: () {
                  Navigator.pop(context);
                  _incrementCounter();
                },
              ),
            ],
          ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    Fluttertoast.showToast(
      msg: "Counter sekarang: $_counter",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.pink[50],
      textColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile",
        style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        padding: EdgeInsets.all(26),
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/img/view.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/img/profile.jpeg',
                        fit: BoxFit.contain,
                      ),
                    ),
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
                    _showConfirmationDialog();
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
