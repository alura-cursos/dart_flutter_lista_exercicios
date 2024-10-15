import 'package:flutter/material.dart';
import 'package:flutter_dart_lista_exercicios/models/person.dart';
import 'package:flutter_dart_lista_exercicios/models/social_post.dart';
import 'package:flutter_dart_lista_exercicios/ui/widgets/book_widget.dart';
import 'package:flutter_dart_lista_exercicios/ui/widgets/person_widget.dart';
import 'package:flutter_dart_lista_exercicios/ui/widgets/social_post_widget.dart';

import 'models/book.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BookWidget(book: Book.getExample()),
              PersonWidget(person: Person.getExample()),
              SocialPostWidget(post: SocialPost.getExampleWithoutImage()),
              SocialPostWidget(post: SocialPost.getExampleWithImage()),
            ],
          ),
        ),
      ),
    );
  }
}
