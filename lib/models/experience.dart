class Experience {
  String title;
  String organization;
  String? obs;
  DateTime dateStart;
  DateTime? dateEnd;

  Experience({
    required this.title,
    required this.organization,
    this.obs,
    required this.dateStart,
    this.dateEnd,
  });
}
