import 'package:flutter/material.dart';
import 'package:usedev/src/core/theme/colors.dart';
import 'package:usedev/src/widgets/common/search_bar.dart';

class CustomHeader extends StatelessWidget {
  final VoidCallback onMenuTap;
  final VoidCallback onLoginTap;
  final VoidCallback onCartTap;
  final TextEditingController searchController;

  const CustomHeader({
    super.key,
    required this.onMenuTap,
    required this.onLoginTap,
    required this.onCartTap,
    required this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color( 0xFFFFFFFF), // Fundo branco para o header
      padding: const EdgeInsets.all(33), // Padding geral do header
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 24,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const Icon(Icons.menu, color: AppColors.textPrimary), 
                onPressed: onMenuTap,
              ),
              Image.asset(
                'assets/logo/PNG/Logo_UseDev.png',
                height: 42,
                fit: BoxFit.contain,
              ),
              Row(
                spacing: 8,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    iconSize: 32,
                    icon: const Icon(Icons.person_outline, color: AppColors.textPrimary),
                    onPressed: onLoginTap,
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    iconSize: 32,
                    icon: const Icon(Icons.shopping_cart_outlined, color: AppColors.textPrimary),
                    onPressed: onCartTap,
                  ),
                ],
              ),
            ],
          ),
          CustomSearchBar(controller: searchController),
        ],
      ),
    );
  }
}