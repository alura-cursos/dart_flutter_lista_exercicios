import 'package:flutter/material.dart';

import 'data/my_curriculum.dart';
import 'ui/curriculum_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurriculumScreen(curriculum: myCurriculum),
    );
  }
}
