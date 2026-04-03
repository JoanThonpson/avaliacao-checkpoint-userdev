import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev/src/core/theme/colors.dart';
import 'package:usedev/src/models/promo_product_model.dart';

class ProductHighlightGrid extends StatelessWidget {
  final List<PromoProductModel> products;
  final Function(PromoProductModel) onTap;

  const ProductHighlightGrid({
    super.key,
    required this.products,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundWhite,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          // Lista de cards
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            separatorBuilder: (_, __) => const SizedBox(height: 24),
            itemBuilder: (context, index) {
              final product = products[index];
              return _ProductCard(
                product: product,
                onTap: () => onTap(product),
              );
            },
          ),

          const SizedBox(height: 24),

          // "Ver mais" centralizado
          GestureDetector(
            onTap: () {},
            child: Text(
              'Ver mais',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.primary, 
                height: 1.2,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.primary,
              ),
            ),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final PromoProductModel product;
  final VoidCallback onTap;

  const _ProductCard({
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundWhite, 
          //borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.12), 
              blurRadius: 24,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // === FRAME 8 — imagem ===
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
              ),
              child: Image.asset(
                product.imageUrl,
                width: double.infinity,
                height: 291,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 291,
                    color: AppColors.backgroundLight,
                    child: const Icon(
                      Icons.image_not_supported,
                      size: 50,
                      color: AppColors.categoryDescription,
                    ),
                  );
                },
              ),
            ),

            // === FRAME 7 — info ===
            Container(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 16), 
              decoration: const BoxDecoration(
                color: AppColors.backgroundLight, 
                borderRadius: BorderRadius.vertical(
                 
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16, //espaço entre nome e preço
                children: [
                  // Nome
                  Text(
                    product.name,
                    style: GoogleFonts.orbitron(
                      fontSize: 25, 
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryDark, 
                      height: 1.2,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  // Preço
                  Row(
                    children: [
                      Text(
                        '${product.price.toStringAsFixed(2)}',
                        style: GoogleFonts.poppins(
                          fontSize: 31, 
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryDark,
                          height: 1.5, 
                        ),
                      ),
                      if (product.originalPrice != null) ...[
                        const SizedBox(width: 12),
                        Text(
                          '${product.originalPrice!.toStringAsFixed(2)}',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColors.categoryDescription,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: AppColors.categoryDescription,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}