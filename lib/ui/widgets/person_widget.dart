import 'package:flutter/material.dart';

import '../../models/person.dart';

class PersonWidget extends StatelessWidget {
  final Person person;
  const PersonWidget({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Exibição da imagem da pessoa manualmente
              Image.asset(
                person.imagePath,
                width: 80,
                height: 80,
              ),
              const SizedBox(width: 16),
              // Nome completo e data de registro
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${person.name} ${person.lastName}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Registered at: ${_formatDate(person.registeredAt)}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          // Exibição das demais informações organizadas explicitamente
          Row(
            children: [
              const Icon(Icons.phone, color: Colors.blueGrey),
              const SizedBox(width: 16),
              const Text(
                'Phone Number: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text(
                  person.number,
                  style: const TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.badge, color: Colors.blueGrey),
              const SizedBox(width: 16),
              const Text(
                'CPF: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text(
                  person.cpf,
                  style: const TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.cake, color: Colors.blueGrey),
              const SizedBox(width: 16),
              const Text(
                'Birthday: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text(
                  _formatDate(person.birthday),
                  style: const TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.person_pin, color: Colors.blueGrey),
              const SizedBox(width: 16),
              const Text(
                'ID: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text(
                  person.id,
                  style: const TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Função auxiliar para formatar as datas
  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
