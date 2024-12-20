import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BasketPage extends StatelessWidget {
  final String userId;

  const BasketPage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mon Panier')),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .collection('basket')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('Votre panier est vide.'));
          }

          final items = snapshot.data!.docs;
          double total = items.fold(
            0.0,
            (sum, item) => sum + (item['price'] as num),
          );

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return ListTile(
                      leading: Image.network(item['image'], width: 50, height: 50, fit: BoxFit.cover),
                      title: Text(item['title']),
                      subtitle: Text('Taille : ${item['size']} - ${item['price']} €'),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          FirebaseFirestore.instance
                              .collection('users')
                              .doc(userId)
                              .collection('basket')
                              .doc(item.id)
                              .delete();
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Total : ${total.toStringAsFixed(2)} €',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
