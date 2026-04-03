import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onFilterTap;

  const CustomSearchBar({
    super.key,
    required this.controller,
    this.onFilterTap,
  });

  @override
Widget build(BuildContext context) {
  return SizedBox(
    height: 42, // altura fixa para a barra de pesquisa
    child: TextField(
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'O que você procura?',
        hintStyle: const TextStyle(
          color: Color(0xFF090129),
          fontSize: 16,
        ),
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 24), // padding direito 24px
          child: Icon(
            Icons.search,
            color: Color(0xFF090129),
            size: 24,
          ),
        ),
        suffixIconConstraints: const BoxConstraints(), // remove tamanho mínimo padrão
        contentPadding: const EdgeInsets.symmetric(horizontal: 24), // padding 24px
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32), // raio 32px do Figma
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: const Color(0xFFF0F0F0),
      ),
    ),
  );
}
}