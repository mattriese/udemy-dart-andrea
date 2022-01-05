import 'package:collection/collection.dart';

void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    final averageRating = ratings.average;
    restaurant['avgRating'] = averageRating;
    print('${restaurant['name']} rating is ${restaurant['avgRating']}');
  }
}
