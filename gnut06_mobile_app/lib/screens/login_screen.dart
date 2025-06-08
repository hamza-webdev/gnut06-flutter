/*
* =========================================
* NOUVEAU FICHIER: lib/screens/login_screen.dart
* =========================================
*/
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil & Inscription'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.person_add_alt_1,
                size: 80,
                color: Colors.blue[300],
              ),
              const SizedBox(height: 20),
              const Text(
                'Rejoignez notre communauté',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Connectez-vous pour vous inscrire à nos événements et suivre nos actualités.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red),
                label: const Text('Se connecter avec Google'),
                onPressed: () {
                  // TODO: Implémenter la logique de connexion Google ici
                  // Afficher un message temporaire pour le développement
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('La connexion Google n\'est pas encore implémentée.'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  backgroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}