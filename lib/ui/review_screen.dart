import 'package:flutter/material.dart';

import '../models/review.dart';

class ReviewScreen extends StatelessWidget {
  final Review review;
  const ReviewScreen({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${review.title} (${review.year})",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: List.generate(
                review.stars,
                (index) {
                  return const Text("⭐");
                },
              ),
            ),
            Text("Data: ${review.date.toString().substring(0, 10)}"),
            Text(review.review),
          ],
        ),
      ),
    );
  }
}
