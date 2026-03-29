class CategoryModel {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final String? badge;
  final String description;

  CategoryModel({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    this.badge,
    required this.description,
  });

  // Dados mockados das categorias do Figma
  static List<CategoryModel> mockCategories() {
    return [
      CategoryModel(
        id: '1',
        name: 'Roupas',
        price: 25.00,
        imageUrl: 'assets/images/Categorias/Mobile/Categorias_Roupas.png',
        description: 'Camisetas, calças e muito mais',
      ),
      CategoryModel(
        id: '2',
        name: 'Canecas',
        price: 25.00,
        imageUrl: 'assets/images/categoria_canecas.png',
        description: 'Canecas personalizadas',
      ),
      CategoryModel(
        id: '3',
        name: 'Bonê 404',
        price: 28.00,
        imageUrl: 'assets/images/categoria_bone.png',
        description: 'Boné exclusivo',
        badge: 'Novo',
      ),
      CategoryModel(
        id: '4',
        name: 'Quadro While',
        price: 22.00,
        imageUrl: 'assets/images/categoria_quadro.png',
        description: 'Quadro decorativo',
      ),
    ];
  }
}