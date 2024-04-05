class Product {
  final List<String> imageList;
  final String title, description;
  final int id, reviews;
  final double rating, price;

  Product({
    required this.id,
    required this.imageList,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.reviews,
  });
}

List<Product> products = [
  Product(
    id: 1,
    imageList: ['assets/images/chair_3.jpg', 'assets/images/chair_5.jpg'],
    title: 'Chester Chair',
    description:
        'The inspiration of the design of the chair comes from individual style of the first half of the last century, which is complimented by the most modern design',
    price: 61.00,
    rating: 4.8,
    reviews: 145,
  ),
  Product(
    id: 2,
    imageList: ['assets/images/chair_1.jpg'],
    title: 'Leset Galant',
    description:
        'The inspiration of the design of the chair comes from individual style of the first half of the last century, which is complimented by the most modern design',
    price: 64.00,
    rating: 4.5,
    reviews: 100,
  ),
  Product(
    id: 3,
    imageList: ['assets/images/chair_2.jpg'],
    title: 'Soft Element Jack',
    description:
        'The inspiration of the design of the chair comes from individual style of the first half of the last century, which is complimented by the most modern design',
    price: 57.50,
    rating: 4.6,
    reviews: 126,
  ),
  Product(
    id: 4,
    imageList: ['assets/images/chair_6.jpg'],
    title: 'Avrora Chair',
    description:
        'The inspiration of the design of the chair comes from individual style of the first half of the last century, which is complimented by the most modern design',
    price: 47.50,
    rating: 4.7,
    reviews: 10,
  ),
];
