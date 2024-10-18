import 'package:flutter/material.dart';

import '../../models/event_registration.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  TicketType selectedTicketType = TicketType.regular;
  DietaryPreference selectedDietaryPreference = DietaryPreference.noPreference;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      padding: EdgeInsets.only(
        left: 32,
        right: 32,
        top: 32,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // Para ajustar o modal ao conteúdo
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.event_available,
                  size: 48,
                  color: Colors.pink[700],
                ),
                const SizedBox(width: 8),
                const Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Registro no evento",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                          "Preencha as informações para participar do evento."),
                    ],
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(),
            ),
            // Campo de nome
            TextFormField(
              decoration: const InputDecoration(labelText: 'Nome Completo'),
            ),

            const SizedBox(height: 16), // Espaçamento

            // Campo de email
            TextFormField(
              decoration: const InputDecoration(labelText: 'Email'),
            ),

            const SizedBox(height: 16), // Espaçamento

            // Campo de telefone
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Número de Telefone'),
            ),

            const SizedBox(height: 16), // Espaçamento

            // Dropdown para o tipo de ingresso
            DropdownButtonFormField<TicketType>(
              value: selectedTicketType,
              decoration: const InputDecoration(labelText: 'Tipo de Ingresso'),
              onChanged: (TicketType? newValue) {
                setState(() {
                  selectedTicketType = newValue!;
                });
              },
              items: const [
                DropdownMenuItem(
                  value: TicketType.free,
                  child: Text("Gratuito"),
                ),
                DropdownMenuItem(
                  value: TicketType.regular,
                  child: Text("Normal"),
                ),
                DropdownMenuItem(
                  value: TicketType.vip,
                  child: Text("VIP"),
                ),
              ],
            ),

            const SizedBox(height: 16), // Espaçamento

            // Dropdown para preferências alimentares
            DropdownButtonFormField<DietaryPreference>(
              value: selectedDietaryPreference,
              decoration:
                  const InputDecoration(labelText: 'Preferências Alimentares'),
              onChanged: (DietaryPreference? newValue) {
                setState(() {
                  selectedDietaryPreference = newValue!;
                });
              },
              items: const [
                DropdownMenuItem(
                  value: DietaryPreference.noPreference,
                  child: Text("Sem preferência"),
                ),
                DropdownMenuItem(
                  value: DietaryPreference.glutenFree,
                  child: Text("Livre de glúten"),
                ),
                DropdownMenuItem(
                  value: DietaryPreference.vegetarian,
                  child: Text("Vegetariano"),
                ),
                DropdownMenuItem(
                  value: DietaryPreference.vegan,
                  child: Text("Vegano"),
                ),
              ],
            ),

            const SizedBox(height: 32), // Espaçamento

            // Botão de continuar (sem comportamento)
            ElevatedButton(
              onPressed: () {
                // Sem comportamento, só mudança visual
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.pink[700],
                ),
              ),
              child: const Text(
                'Registrar',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
