import 'package:firebase/widgets/navbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de usuarios'),
      ),
      body: ListView.builder(
        itemCount: 6, // replace with the actual number of users
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Nombre: Juan ${index + 1}'),
              subtitle: Text('Apellido: Pérez ${index + 1}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      // handle edit button press
                    },
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      // handle delete button press
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
