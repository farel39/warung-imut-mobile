import 'package:flutter/material.dart';
import 'package:warung_imut/models/item.dart';
import 'package:warung_imut/widgets/left_drawer.dart';

class ItemDetailPage extends StatelessWidget {
  final Item item;

  const ItemDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${item.fields.name}",
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text("Price: ${item.fields.price}"),
            const SizedBox(height: 10),
            Text("Description: ${item.fields.description}"),
            const SizedBox(height: 10),
            Text("Stock: ${item.fields.stock}"),
            const SizedBox(height: 10),
            Text("Imutness Rating: ${item.fields.imutnessRating}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman daftar item
              },
              child: const Text("Back to Item List"),
            ),
          ],
        ),
      ),
    );
  }
}
