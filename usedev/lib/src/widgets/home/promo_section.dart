import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromoSection extends StatelessWidget {
  const PromoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFEFEFEF), 
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Promos especiais',
            style: GoogleFonts.orbitron(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0B254B), 
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}