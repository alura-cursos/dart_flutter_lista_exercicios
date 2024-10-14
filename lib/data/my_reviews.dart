import 'dart:math';

import '../models/review.dart';

Review getRandomReview() {
  List<Review> listReviews = [
    Review(
      title: "Severance",
      year: "2022",
      stars: 5,
      review: "Uma excelente série, bem dirigida, bem escrita e intrigante.",
      date: DateTime.now(),
    ),
    Review(
      title: "House of the Dragon",
      year: "2022",
      stars: 4,
      review:
          "Uma história do universo de George R. R. Martin que, apesar de boa, não consegue se livrar das inevitáveis comparações com Game of Thrones, sendo assim mais morna e menos cativante.",
      date: DateTime.now(),
    ),
  ];

  return listReviews[Random().nextInt(listReviews.length)];
}
