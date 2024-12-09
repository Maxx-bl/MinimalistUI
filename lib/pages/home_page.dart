import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Minimalisme Numérique',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            // Section Temps d'écran
            Text(
              'Temps d\'écran aujourd\'hui',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Text(
              '2h 35m', // Placeholder for dynamic data
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 30),
            // Section Objectifs
            Text(
              'Objectif journalier : Moins de 3h',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 40),
            // Boutons d'action
            ElevatedButton(
              onPressed: () {
                // Action: Activate Focus Mode
                showFocusModeDialog(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, // Replaces `primary`
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Activer le mode Focus',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Action : Aller à la page des statistiques
                Navigator.pushNamed(context, '/statistics');
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                side: BorderSide(color: Colors.blueAccent, width: 2),
              ),
              child: Text(
                'Voir les statistiques',
                style: TextStyle(fontSize: 18, color: Colors.blueAccent),
              ),
            ),
            Spacer(),
            // Section Astuce
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.lightbulb, color: Colors.blueAccent, size: 28),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Astuce : Évitez d\'utiliser votre téléphone 1h avant de dormir pour mieux dormir.',
                      style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void showFocusModeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Mode Focus'),
        content: Text(
            'Le mode Focus est activé ! Les distractions seront minimisées pendant 25 minutes.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK', style: TextStyle(color: Colors.blueAccent)),
          ),
        ],
      ),
    );
  }
}
