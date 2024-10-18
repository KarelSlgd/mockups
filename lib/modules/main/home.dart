import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Future<void> _signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.pushReplacementNamed(
          context, '/login'); // Navegar a la pantalla de inicio de sesión
    } catch (e) {
      print('Error al cerrar sesión: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.credit_card, color: Colors.green),
              title: Text('Créditos'),
              trailing: Text('40% - 980 \$'),
            ),
            ListTile(
              leading: Icon(Icons.fastfood, color: Colors.yellow),
              title: Text('Alimentación'),
              trailing: Text('30% - 22 \$'),
            ),
            ListTile(
              leading: Icon(Icons.restaurant, color: Colors.blue),
              title: Text('Restaurantes'),
              trailing: Text('20% - 2,500 \$'),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.red),
              title: Text('Casa'),
              trailing: Text('10% - 625 \$'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () async {
                await _signOut(context);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cerrar Sesión',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
