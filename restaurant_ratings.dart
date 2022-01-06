class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;
  int get numOfRatings => ratings.length;
  double get avgRating {
    var average = 0.0;
    for (var rating in ratings) {
      average += rating;
    }
    average /= ratings.length;
    return average;
  }

  double? andreasAvgMethod() {
    if (ratings.isEmpty) {
      return null;
    }
    return ratings.reduce((value, element) => value + element) / ratings.length;
  }
}

void main() {
  const bk =
      Restaurant(name: 'bk', cuisine: 'american', ratings: [1.2, 3.4, 6.9]);
  print(bk.name);
  print(bk.avgRating);
  print(bk.numOfRatings);
}
