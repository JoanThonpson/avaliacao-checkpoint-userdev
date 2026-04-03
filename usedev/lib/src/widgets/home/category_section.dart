import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev/src/core/theme/colors.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundWhite, 
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          Text(
            'Categorias',
            textAlign: TextAlign.center,
            style: GoogleFonts.orbitron(
              fontSize: 25, 
              fontWeight: FontWeight.bold,
              color: AppColors.categoryTitle, 
              height: 1.2, // 
            ),
          ),
          const SizedBox(height: 16), 
          Text(
            'De roupas a gadgets tecnológicos temos tudo para atender suas paixões e hobbies com estilo e autenticidade.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16, 
              fontWeight: FontWeight.w400,
              color: Color( 0xFF5E6E89),
              height: 1.2, 
            ),
          ),
        ],
      ),
    );
  }
}