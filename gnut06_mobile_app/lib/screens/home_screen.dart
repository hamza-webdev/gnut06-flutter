/*
* =========================================
* FICHIER: lib/screens/home_screen.dart
* =========================================
*/
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gnut 06'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue[600],
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
              child: Column(
                children: [
                  const Text(
                    "L'innovation au service de l'inclusion",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Découvrez comment la technologie peut briser les barrières.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Notre Mission",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  MissionCard(
                    icon: Icons.visibility,
                    title: "Technologies Immersives",
                    description: "Nous explorons le potentiel de la VR et de l'AR pour la rééducation et l'apprentissage.",
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 12),
                  MissionCard(
                    icon: Icons.group,
                    title: "Intégration Sociale",
                    description: "Nos ateliers créent des lieux de rencontre, de partage et de lien social.",
                    color: Colors.green,
                  ),
                   const SizedBox(height: 12),
                   MissionCard(
                    icon: Icons.favorite,
                    title: "Épanouissement Personnel",
                    description: "Offrir des expériences qui renforcent la confiance en soi et l'autonomie.",
                    color: Colors.red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MissionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;

  const MissionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: color.withOpacity(0.1),
              child: Icon(icon, color: color, size: 28),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(description, style: TextStyle(color: Colors.grey[600])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
