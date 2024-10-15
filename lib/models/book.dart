class Book {
  final String title;
  final String author;
  final int pages;

  Book({
    required this.title,
    required this.author,
    required this.pages,
  });

  // Método para verificar se o livro é um "livro longo"
  bool isLongBook() {
    return pages > 300;
  }

  @override
  String toString() {
    return 'Book: "$title" by $author, $pages pages';
  }

  // Método estático para obter um exemplo da classe
  static Book getExample() {
    return Book(
      title: 'The Dart Programming Language',
      author: 'Chris Buckett',
      pages: 350,
    );
  }
}
