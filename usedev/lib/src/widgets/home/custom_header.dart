import 'package:flutter/material.dart';
//import 'package:usedev/src/core/theme/colors.dart';

class CustomHeader extends StatelessWidget {
  final VoidCallback onMenuTap;
  final VoidCallback onLoginTap;
  final VoidCallback onCartTap;

  const CustomHeader({
    super.key,
    required this.onMenuTap,
    required this.onLoginTap,
    required this.onCartTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: const Color.fromARGB(255, 248, 248, 252),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Menu Hambúrguer
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: onMenuTap,
            color: const Color.fromARGB(255, 7, 7, 7),
          ),
          
          // Logo como imagem
          Image.asset(
            'assets/logo/PNG/Logo_UseDev.png',
            height: 40,
            width: 120,
            fit: BoxFit.contain,
          ),

          // Ícones de ação
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.person_outline),
                onPressed: onLoginTap,
                color: const Color.fromARGB(255, 13, 13, 13),
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: onCartTap,
                color: const Color.fromARGB(255, 3, 3, 3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}