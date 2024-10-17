import 'package:flutter/material.dart';

import '../models/curriculum.dart';
import '../models/experience.dart';
import '../models/project.dart';
import 'widgets/project_widget.dart';

class CurriculumScreen extends StatefulWidget {
  final Curriculum curriculum;
  const CurriculumScreen({super.key, required this.curriculum});

  @override
  State<CurriculumScreen> createState() => _CurriculumScreenState();
}

class _CurriculumScreenState extends State<CurriculumScreen> {
  bool isShowingEmail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView(
          children: [
            Column(
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
                  widget.curriculum.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                (isShowingEmail)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(widget.curriculum.email),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isShowingEmail = false;
                              });
                            },
                            icon: Icon(
                              Icons.visibility_off,
                              color: Colors.purple[600],
                            ),
                          )
                        ],
                      )
                    : ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isShowingEmail = true;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.purple[600]),
                        ),
                        child: const Text(
                          "Ver e-mail",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                const SizedBox(height: 24),
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
                    widget.curriculum.listEducation.length,
                    (index) {
                      Experience experience =
                          widget.curriculum.listEducation[index];
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
                    widget.curriculum.listProfessional.length,
                    (index) {
                      Experience experience =
                          widget.curriculum.listProfessional[index];
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
                  children: List.generate(
                    widget.curriculum.listProjects.length,
                    (index) {
                      Project project = widget.curriculum.listProjects[index];
                      return ProjectWidget(project: project);
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
