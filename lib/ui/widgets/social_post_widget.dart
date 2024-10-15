import 'package:flutter/material.dart';
import '../../models/social_post.dart';

class SocialPostWidget extends StatelessWidget {
  final SocialPost post;
  const SocialPostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Autor e tempo da postagem
          Row(
            children: [
              Text(
                post.author,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(width: 8),
              Text(
                post.timeAgo(),
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Conteúdo da postagem
          Text(
            post.content,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 12),
          // Exibição opcional da imagem (caso exista)
          if (post.imagePath != null) ...[
            const SizedBox(height: 8),
            Center(
              child: Image.asset(
                post.imagePath!,
                fit: BoxFit.cover,
                height: 400,
              ),
            ),
            const SizedBox(height: 12),
          ],
          // Botões de curtir e comentários
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Botão de curtidas
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.thumb_up, color: Colors.blueGrey),
                    onPressed: () {
                      post.like(); // Incrementa as curtidas
                      // Atualizar a interface ainda não é implementado
                    },
                  ),
                  Text(
                    '${post.likes} likes',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              // Botão de comentários
              TextButton.icon(
                onPressed: () {
                  // Implementar ação para abrir comentários no futuro
                },
                icon: const Icon(Icons.comment, color: Colors.blueGrey),
                label: Text('${post.comments.length} comments'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
