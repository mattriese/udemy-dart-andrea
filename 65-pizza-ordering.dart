void main() {
  const pizzaPrices = {'marg': 5.5, 'pep': 7.5, 'veg': 6.5};
  const order = ['marg', 'pep'];
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    } else {
      print('$item pizza is not on the menu');
    }
  }
  print('Total: \$$total');
}
