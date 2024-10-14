import 'experience.dart';
import 'project.dart';

class Curriculum {
  String name;
  String imagePath;
  List<Experience> listEducation;
  List<Experience> listProfessional;
  List<Project> listProjects;

  Curriculum({
    required this.name,
    required this.imagePath,
    required this.listEducation,
    required this.listProfessional,
    required this.listProjects,
  });
}
