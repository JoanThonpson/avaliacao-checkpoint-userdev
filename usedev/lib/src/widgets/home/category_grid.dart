import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev/src/core/theme/colors.dart';
import 'package:usedev/src/models/category_model.dart';

class CategoryGrid extends StatelessWidget {
  final List<CategoryModel> categories;
  final Function(CategoryModel) onTap;

  const CategoryGrid({
    super.key,
    required this.categories,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundWhite, // 
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10), // 
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () => onTap(category),
            child: Container(
              width: 312, 
              height: 315, 
              decoration: BoxDecoration(
                color: AppColors.backgroundWhite,
                //borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.categoryShadow.withOpacity(0.15), // 
                    blurRadius: 24, // 
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 10, // ✅ espaço entre imagem e nome
                children: [
                  // Imagem em cima
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      child: Image.asset(
                        category.imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),

                  // Nome embaixo — fundo branco
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                    child: Text(
                      category.name,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.orbitron(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.categoryTitle, // 
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}