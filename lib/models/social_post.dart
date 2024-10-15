import 'dart:math';

class SocialPost {
  final String postId;
  final String author;
  final String content;
  final DateTime timestamp;
  final String? imagePath;
  int likes;
  List<String> comments;

  SocialPost({
    required this.postId,
    required this.author,
    required this.content,
    required this.timestamp,
    this.imagePath, // Campo opcional que pode ser nulo
    this.likes = 0,
    this.comments = const [],
  });

  // Método para curtir a postagem
  void like() {
    likes++;
  }

  // Método para adicionar um comentário
  void addComment(String comment) {
    comments.add(comment);
  }

  // Método para obter o tempo desde a postagem
  String timeAgo() {
    final duration = DateTime.now().difference(timestamp);
    if (duration.inMinutes < 60) {
      return '${duration.inMinutes} minutes ago';
    } else if (duration.inHours < 24) {
      return '${duration.inHours} hours ago';
    } else {
      return '${duration.inDays} days ago';
    }
  }

  @override
  String toString() {
    return '$author posted: $content\nLikes: $likes, Comments: ${comments.length}, ${timeAgo()}\n'
        '${imagePath != null ? "Image: $imagePath" : "No image"}';
  }

  // Método estático para obter um exemplo da classe
  static SocialPost getExample() {
    return [
      getExampleWithImage(),
      getExampleWithoutImage()
    ][Random().nextInt(2)];
  }

  static SocialPost getExampleWithImage() {
    return SocialPost(
      postId: 'POST124',
      author: 'Isa',
      content: 'Loving the new design of our app!',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      imagePath: 'assets/post123.png', // Exemplo com uma imagem associada
      likes: 42,
      comments: ['Looks great!', 'Can’t wait to try it!', 'Awesome work!'],
    );
  }

  static SocialPost getExampleWithoutImage() {
    return SocialPost(
      postId: 'POST123',
      author: 'Isa',
      content: "I'm working in a brand-new app. 👀",
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      likes: 42,
      comments: ['Wow, interesting...', "Let me take a peek!"],
    );
  }
}
