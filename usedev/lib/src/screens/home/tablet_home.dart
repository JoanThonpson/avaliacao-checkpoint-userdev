import 'package:flutter/material.dart';
import 'package:usedev/src/data/mock_categories.dart';
import 'package:usedev/src/data/mock_products.dart';
import 'package:usedev/src/widgets/common/search_bar.dart';
import 'package:usedev/src/widgets/home/custom_header.dart';
import 'package:usedev/src/widgets/home/hero_banner.dart';
import 'package:usedev/src/widgets/home/category_section.dart';
import 'package:usedev/src/widgets/home/category_grid.dart';
import 'package:usedev/src/widgets/home/promo_section.dart';
import 'package:usedev/src/widgets/home/product_highlight_grid.dart';
import 'package:usedev/src/widgets/home/see_more_button.dart';
import 'package:usedev/src/widgets/home/newsletter_section.dart';
import 'package:usedev/src/widgets/home/footer_section.dart';

class TabletHome extends StatefulWidget {
  const TabletHome({super.key});

  @override
  State<TabletHome> createState() => _TabletHomeState();
}

class _TabletHomeState extends State<TabletHome> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            title: null,
            flexibleSpace: FlexibleSpaceBar(
              background: CustomHeader(
                onMenuTap: () {},
                onLoginTap: () => _showLoginDialog(),
                onCartTap: () => Navigator.pushNamed(context, '/cart'),
              ),
            ),
            expandedHeight: 70,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  CustomSearchBar(controller: _searchController),
                  HeroBanner(
                    imageUrl: 'assets/images/Imagem_Hero_Mobile.png',
                    title: 'Hora de abraçar seu lado geek',
                  ),
                  const CategorySection(),
                  CategoryGrid(
                    categories: MockCategories.getCategories(),
                    onTap: (category) {
                      Navigator.pushNamed(
                        context,
                        '/category',
                        arguments: category.id,
                      );
                    },
                  ),
                  const PromoSection(),
                  ProductHighlightGrid(
                    products: MockPromoProducts.getPromoProducts(),
                    onTap: (product) {
                      Navigator.pushNamed(
                        context,
                        '/product',
                        arguments: product.id,
                      );
                    },
                  ),
                  SeeMoreButton(
                    onTap: () {
                      Navigator.pushNamed(context, '/products');
                    },
                  ),
                  const NewsletterSection(),
                  const FooterSection(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showLoginDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Login'),
        content: const Text('Funcionalidade em desenvolvimento'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Fechar'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}