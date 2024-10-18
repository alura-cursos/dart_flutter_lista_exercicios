import 'package:flutter/material.dart';

import '../../models/event_registration.dart';

class EventRegistrationWidget extends StatelessWidget {
  final EventRegistration registration;

  const EventRegistrationWidget({super.key, required this.registration});

  // Função auxiliar para converter TicketType em texto legível
  String _getTicketTypeLabel(TicketType ticketType) {
    switch (ticketType) {
      case TicketType.vip:
        return 'VIP';
      case TicketType.regular:
        return 'Regular';
      case TicketType.free:
        return 'Gratuito';
      default:
        return 'Desconhecido';
    }
  }

  // Função auxiliar para converter DietaryPreference em texto legível
  String _getDietaryPreferenceLabel(DietaryPreference preference) {
    switch (preference) {
      case DietaryPreference.vegan:
        return 'Vegano';
      case DietaryPreference.vegetarian:
        return 'Vegetariano';
      case DietaryPreference.noPreference:
        return 'Sem preferência';
      case DietaryPreference.glutenFree:
        return 'Sem glúten';
      default:
        return 'Desconhecido';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(
        width: 2,
        color: Colors.pink[800]!,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Nome com cor personalizada
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Text(
              registration.fullName,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.pink[800],
              ),
            ),
          ),
          _buildCompactRow(
            icon: Icons.email,
            label: registration.email,
          ),
          _buildCompactRow(
            icon: Icons.confirmation_num,
            label: _getTicketTypeLabel(registration.ticketType),
          ),
          _buildCompactRow(
            icon: Icons.phone,
            label: registration.phoneNumber,
          ),
          _buildCompactRow(
            icon: Icons.restaurant_menu,
            label: _getDietaryPreferenceLabel(registration.dietaryPreference),
          ),
        ],
      ),
    );
  }

  // Função para construir uma linha compacta com ícones
  Widget _buildCompactRow({required IconData icon, required String label}) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.pink[300],
          size: 20,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
