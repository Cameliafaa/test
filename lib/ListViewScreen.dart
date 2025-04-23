import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  final List<Map<String, String>> listViewInfos = [
    {
      'title': 'ListView.builder',
      'description':
          'Digunakan untuk daftar dengan jumlah item yang banyak atau tidak tetap',
    },
    {
      'title': 'ListView.separated',
      'description': 'Digunakan jika ingin menambahkan pemisah antar item',
    },
    {
      'title': 'ListView.custom',
      'description':
          'Digunakan untuk membuat list dengan lebih banyak kontrol menggunakan SliverChildDelegate',
    },
    {
      'title': 'ListView',
      'description':
          'Digunakan jika daftar memiliki jumlah item tetap yang kecil',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: listViewInfos.length,
        itemBuilder: (context, index) {
          final item = listViewInfos[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Card(
              elevation: 4,
              shadowColor: Colors.black54,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                title: Text(
                  item['title'] ?? '',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(item['description'] ?? ''),
                leading: const Icon(Icons.list),
              ),
            ),
          );
        },
      ),
    );
  }
}
