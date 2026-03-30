class CategoryModel {
  final String id;
  final String name;
  final String imageUrl;
  final String? badge;
  final String description;

  CategoryModel({
    required this.id,
    required this.name,
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
        imageUrl: 'assets/images/Categorias/Mobile/Categorias_Roupas.png',
        description: 'Camisetas, calças e muito mais',
      ),
      CategoryModel(
        id: '2',
        name: 'Decorações',
        imageUrl: 'assets/images/Categorias/Mobile/Categoria_Decoração.png',
        description: 'Quadros, pôsteres e itens de decoração',
      ),
      CategoryModel(
        id: '3',
        name: 'Canecas',
        imageUrl: 'assets/images/Categorias/Mobile/Categoria_canecas.png',
        description: 'Canecas personalizadas',
        badge: 'Novo',
      ),
      CategoryModel(
        id: '4',
        name: 'Acessórios',
        imageUrl: 'assets/images/Categorias/Mobile/Categoria_Acessorios.png',
        description: 'acessórios para devs',
      ),
    ];
  }
}