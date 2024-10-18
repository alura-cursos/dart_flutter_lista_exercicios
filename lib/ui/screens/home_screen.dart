import 'package:flutter/material.dart';
import 'package:flutter_dart_lista_exercicios/models/event_registration.dart';
import 'package:flutter_dart_lista_exercicios/services/event_registration_service.dart';
import 'package:flutter_dart_lista_exercicios/ui/widgets/event_registration_widget.dart';
import '../widgets/registration_form.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final EventRegistrationService _eventRegistrationService =
      EventRegistrationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lista de Registros",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pink[300],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return RegistrationForm(
                eventRegistrationService: _eventRegistrationService,
              );
            },
          );
        },
        backgroundColor: Colors.pink[300],
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: ListView.builder(
          itemCount: _eventRegistrationService.getEventRegistrations().length,
          itemBuilder: (context, index) {
            EventRegistration event =
                _eventRegistrationService.getEventRegistrations()[index];
            return EventRegistrationWidget(registration: event);
          },
        ),
      ),
    );
  }
}
