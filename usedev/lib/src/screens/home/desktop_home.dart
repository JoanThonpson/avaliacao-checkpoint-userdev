import 'package:flutter/material.dart';
import 'package:usedev/src/models/product_model.dart';
import 'package:usedev/src/widgets/common/product_card.dart';
import 'package:usedev/src/widgets/common/search_bar.dart';
//import 'package:usedev/src/widgets/common/category_chip.dart';
import 'package:usedev/src/core/theme/colors.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key});

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  final TextEditingController _searchController = TextEditingController();
  List<ProductModel> _products = [];
  List<String> _categories = [];
  String _selectedCategory = 'Todos';

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    _products = ProductModel.mockProducts();
    _categories = ['Todos', 'Camisetas', 'Calças', 'Calçados', 'Jaquetas'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UseDev',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          // Menu desktop
          TextButton(
            onPressed: () {},
            child: const Text('Início'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Produtos'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Sobre'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Contato'),
          ),
          const SizedBox(width: 16),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Row(
        children: [
          // Sidebar desktop
          Container(
            width: 280,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: AppColors.divider,
                  width: 1,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    'Categorias',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ..._categories.map((category) {
                  return ListTile(
                    leading: Icon(
                      _getCategoryIcon(category),
                      color: _selectedCategory == category
                          ? AppColors.primary
                          : null,
                    ),
                    title: Text(category),
                    selected: _selectedCategory == category,
                    selectedTileColor: AppColors.primary.withValues(alpha: 0.1),
                    onTap: () {
                      setState(() {
                        _selectedCategory = category;
                      });
                    },
                  );
                }),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    'Filtros',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text('Preço'),
                  trailing: Icon(Icons.chevron_right),
                ),
                const ListTile(
                  title: Text('Avaliação'),
                  trailing: Icon(Icons.chevron_right),
                ),
                const ListTile(
                  title: Text('Marca'),
                  trailing: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
          // Conteúdo principal
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: CustomSearchBar(
                    controller: _searchController,
                    onFilterTap: () {
                      
                    },
                  ),
                ),
                Expanded(
                  child: _buildBody(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'Todos':
        return Icons.grid_view;
      case 'Camisetas':
        return Icons.checkroom;
      case 'Calças':
        return Icons.accessibility_new;
      case 'Calçados':
        return Icons.sports_soccer; //shoe_print é um ícone disponível a partir do Flutter 3.10
      case 'Jaquetas':
        return Icons.watch_later;
      default:
        return Icons.category;
    }
  }

  Widget _buildBody() {
    final filteredProducts = _selectedCategory == 'Todos'
        ? _products
        : _products.where((p) => p.category == _selectedCategory).toList();

    if (filteredProducts.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off,
              size: 64,
              color: AppColors.textSecondary,
            ),
            const SizedBox(height: 16),
            Text(
              'Nenhum produto encontrado',
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 0.65,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
      ),
      itemCount: filteredProducts.length,
      itemBuilder: (context, index) {
        final product = filteredProducts[index];
        return ProductCard(
          product: product,
          onTap: () {
            Navigator.pushNamed(
              context,
              '/product',
              arguments: product.id,
            );
          },
          onAddToCart: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${product.name} adicionado ao carrinho'),
                duration: const Duration(seconds: 2),
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}