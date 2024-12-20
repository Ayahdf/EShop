import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> item;

  const DetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item['title'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image du vêtement
            Image.network(
              item['image'],
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),

            // Titre du vêtement
            Text(
              item['title'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Catégorie du vêtement
            Text(
              'Catégorie : ${item['category']}',
              style: TextStyle(fontSize: 18),
            ),

            // Taille
            Text(
              'Taille : ${item['size']}',
              style: TextStyle(fontSize: 18),
            ),

            // Marque
            Text(
              'Marque : ${item['marque']}',
              style: TextStyle(fontSize: 18),
            ),

            // Prix
            Text(
              'Prix : ${item['price']} €',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            // Boutons d'action
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Retour'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ajout au panier (future fonctionnalité)
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${item['title']} ajouté au panier !')),
                    );
                  },
                  child: Text('Ajouter au panier'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
