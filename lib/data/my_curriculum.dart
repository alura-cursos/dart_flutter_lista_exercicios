import '../models/curriculum.dart';
import '../models/experience.dart';
import '../models/project.dart';

Curriculum myCurriculum = Curriculum(
  name: "Risoflora Mangle",
  imagePath: "assets/foto.jpg",
  email: "ris.mangle@gmail.com",
  listEducation: myEducationExperience,
  listProfessional: myProfessionalExperience,
  listProjects: myProjects,
);

List<Experience> myEducationExperience = [
  Experience(
    title: "Ensino Médio",
    organization: "Colégio Conectado Francisco Ciência",
    dateStart: DateTime.parse("2007-02-01"),
    dateEnd: DateTime.parse("2013-12-13"),
  ),
  Experience(
    title: "Bacharelado em Ciências da Computação",
    organization: "Universidade Federal de Pernambuco",
    dateStart: DateTime.parse("2014-04-02"),
    dateEnd: DateTime.parse("2018-11-10"),
  ),
];

List<Experience> myProfessionalExperience = [
  Experience(
    title: "Desenvolvedora Fullstack com Angular e Spring",
    obs: "Estagiária",
    organization: "Sistemas Inteligentes de Gestão de Trânsito",
    dateStart: DateTime.parse("2017-02-01"),
    dateEnd: DateTime.parse("2018-03-13"),
  ),
  Experience(
    title: "Desenvolvedora mobile com Flutter",
    organization: "Kemu - Gamificando a Educação",
    dateStart: DateTime.parse("2019-01-02"),
    dateEnd: DateTime.parse("2021-04-05"),
  ),
  Experience(
    title: "Instrutora e Desenvolvedora com Flutter",
    organization: "Alura",
    dateStart: DateTime.parse("2021-04-15"),
  ),
];

List<Project> myProjects = [
  Project(
    imagePath: "assets/listin.png",
    title: "Listin - Lista de Supermercado",
    description:
        "Aplicativo desenvolvido em Flutter para gerenciar listas de compras no supermercado.",
  ),
  Project(
    imagePath: "assets/anybank.png",
    title: "AnyBank",
    description:
        "Aplicativo desenvolvido com Android Nativo para o banco AnyBank",
  ),
  Project(
    imagePath: "assets/cookinup.png",
    title: "Cookin'UP",
    description: "Aplicativo desenvolvido com React para gerenciar receitas.",
  ),
];
