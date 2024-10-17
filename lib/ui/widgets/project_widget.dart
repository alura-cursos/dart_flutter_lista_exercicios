import 'package:flutter/material.dart';

import '../../models/project.dart';

class ProjectWidget extends StatelessWidget {
  final Project project;
  const ProjectWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Image.asset(project.imagePath),
        Text(
          project.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          project.description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
