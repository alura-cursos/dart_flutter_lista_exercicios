import 'package:flutter/material.dart';
import '../../models/book.dart';

class BookWidget extends StatelessWidget {
  final Book book;
  const BookWidget({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.purple[900]!),
          borderRadius: BorderRadius.circular(8),
          color: Colors.purple[100]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            book.title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple[900],
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "${book.author} (${book.pages} pages)",
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            (book.isLongBook()) ? "LIVRO LONGO" : "LIVRO CURTO",
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
