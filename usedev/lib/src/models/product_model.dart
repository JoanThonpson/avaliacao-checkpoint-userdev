class ProductModel {
  final String id;
  final String name;
  final String description;
  final double price;
  final double? originalPrice;
  final String imageUrl;
  final List<String> images;
  final String category;
  final double rating;
  final int reviewCount;
  final bool isOnSale;
  final bool isNew;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.originalPrice,
    required this.imageUrl,
    required this.images,
    required this.category,
    required this.rating,
    required this.reviewCount,
    this.isOnSale = false,
    this.isNew = false,
  });

  // Método de exemplo para produtos mockados
  static List<ProductModel> mockProducts() {
    return [
      ProductModel(
        id: '1',
        name: 'Camiseta Básica',
        description: 'Camiseta 100% algodão, confortável e durável',
        price: 79.90,
        originalPrice: 99.90,
        imageUrl: 'assets/images/product1.png',
        images: [],
        category: 'Camisetas',
        rating: 4.5,
        reviewCount: 128,
        isOnSale: true,
      ),
      ProductModel(
        id: '2',
        name: 'Calça Jeans Skinny',
        description: 'Calça jeans moderna com elastano',
        price: 149.90,
        imageUrl: 'assets/images/product2.png',
        images: [],
        category: 'Calças',
        rating: 4.2,
        reviewCount: 89,
      ),
      ProductModel(
        id: '3',
        name: 'Tênis Esportivo',
        description: 'Tênis leve e confortável para corrida',
        price: 199.90,
        originalPrice: 259.90,
        imageUrl: 'assets/images/product3.png',
        images: [],
        category: 'Calçados',
        rating: 4.8,
        reviewCount: 245,
        isOnSale: true,
        isNew: true,
      ),
      ProductModel(
        id: '4',
        name: 'Jaqueta Jeans',
        description: 'Jaqueta jeans clássica e atemporal',
        price: 189.90,
        imageUrl: 'assets/images/product4.png',
        images: [],
        category: 'Jaquetas',
        rating: 4.3,
        reviewCount: 67,
      ),
    ];
  }
}