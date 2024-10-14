import 'package:flutter/material.dart';

import '../models/curriculum.dart';
import '../models/experience.dart';
import '../models/project.dart';

class CurriculumScreen extends StatelessWidget {
  final Curriculum curriculum;
  const CurriculumScreen({super.key, required this.curriculum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/foto.jpg",
                height: 128,
                width: 128,
              ),
              const SizedBox(height: 8),
              Text(
                curriculum.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "🎓 Educação",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  curriculum.listEducation.length,
                  (index) {
                    Experience experience = curriculum.listEducation[index];
                    return Text(
                        "* ${experience.title} (${experience.organization} - ${experience.dateStart.year})");
                  },
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                "🧠 Experiência profissional",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  curriculum.listProfessional.length,
                  (index) {
                    Experience experience = curriculum.listProfessional[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          experience.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(experience.organization),
                        (experience.obs != null)
                            ? Text("(${experience.obs!})")
                            : const SizedBox(),
                        (experience.dateEnd != null)
                            ? Text(
                                "${experience.dateStart.year} - ${experience.dateEnd!.year}")
                            : Text("${experience.dateStart.year} - atual"),
                        const SizedBox(height: 8),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                "📲 Projetos",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children:
                    List.generate(curriculum.listProjects.length, (index) {
                  Project project = curriculum.listProjects[index];
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
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
