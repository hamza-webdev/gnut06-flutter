/*
* =========================================
* FICHIER: lib/screens/events_screen.dart
* =========================================
*/
import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> mockEvents = [
    {
      "title": "Atelier Découverte VR",
      "date": "25 Juin 2025 • Nice, France",
      "description": "Plongez dans des mondes virtuels et découvrez les applications de la VR.",
      "image": "https://placehold.co/600x400/3B82F6/FFFFFF?text=Atelier+VR"
    },
    {
      "title": "Conférence : Futur Accessibilité",
      "date": "18 Juillet 2025 • En ligne",
      "description": "Des experts partagent leur vision sur l'impact des technologies émergentes.",
      "image": "https://placehold.co/600x400/10B981/FFFFFF?text=Conférence"
    },
  ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Événements'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: mockEvents.length,
        itemBuilder: (context, index) {
          final event = mockEvents[index];
          return EventCard(
            title: event['title']!,
            date: event['date']!,
            description: event['description']!,
            imageUrl: event['image']!,
          );
        },
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  final String imageUrl;

  const EventCard({
    super.key,
    required this.title,
    required this.date,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20.0),
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              height: 180,
              color: Colors.grey[200],
              child: const Center(child: Icon(Icons.image_not_supported)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  date,
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("S'inscrire"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}