import 'package:flutter/material.dart';
import '../widgets/registration_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return const RegistrationForm();
              },
            );
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Colors.pink[300],
            ),
          ),
          child: const Text(
            "Adicionar evento",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
