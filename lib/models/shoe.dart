class Shoe {
  final String name;
  final double price;
  final String imageUrl;
  int quantity;

  Shoe({
    required this.name,
    required this.price,
    required this.imageUrl,
    this.quantity = 1,
  });
}
