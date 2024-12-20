import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
              'Prix : ${double.parse(item['price'].toString())} €', // Conversion explicite pour éviter les erreurs
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
                    onPressed: () async {
                      final userId = FirebaseAuth.instance.currentUser!.uid;

                      // Ajoute l'article dans la collection basket de l'utilisateur
                      await FirebaseFirestore.instance
                          .collection('users')
                          .doc(userId)
                          .collection('basket')
                          .add({
                        'title': item['title'], // Nom en chaîne
                        'size': item['size'],   // Taille en chaîne
                        'price': double.parse(item['price'].toString()), // Prix en double
                        'image': item['image'], // Image en chaîne
                      });

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
