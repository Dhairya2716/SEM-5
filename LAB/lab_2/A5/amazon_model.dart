class ProductModel {
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final double rating;
  final int reviews;
  final bool isPrime;

  ProductModel({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.reviews,
    required this.isPrime,
  });

  static List<ProductModel> getProducts() {
    return [
      ProductModel(
        name: 'Apple iPhone 15 Pro Max (256 GB)',
        description: '6.7-inch Super Retina XDR display with ProMotion',
        price: 1199.99,
        imageUrl: 'https://m.media-amazon.com/images/I/81dT7CUY6GL.AC_UY218.jpg',
        rating: 4.8,
        reviews: 2584,
        isPrime: true,
      ),
      ProductModel(
        name: 'Samsung Galaxy S24 Ultra',
        description: '6.8" QHD+ Dynamic AMOLED 2X Display',
        price: 1299.99,
        imageUrl: 'https://m.media-amazon.com/images/I/71YdE55GwjL.AC_UY218.jpg',
        rating: 4.7,
        reviews: 1853,
        isPrime: true,
      ),
      ProductModel(
        name: 'Apple AirPods Pro (2nd Generation)',
        description: 'Active Noise Cancelling Earbuds',
        price: 249.99,
        imageUrl: 'https://m.media-amazon.com/images/I/61SUj2aKoEL.AC_UY218.jpg',
        rating: 4.8,
        reviews: 45672,
        isPrime: true,
      ),
      ProductModel(
        name: 'Apple Watch Series 9',
        description: 'GPS 45mm Smart Watch',
        price: 399.99,
        imageUrl: 'https://imgs.search.brave.com/9LnegD-JSBqJLGIF_8Okw5jxbaPfmhCyP85xD2oHCXg/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NDExWVkzU3J0Y0wu/anBn',
        rating: 4.6,
        reviews: 3421,
        isPrime: true,
      ),
    ];
  }
}
