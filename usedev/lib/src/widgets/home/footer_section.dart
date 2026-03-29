import 'package:flutter/material.dart';
import 'package:usedev/src/core/theme/colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text(
            'Siga nossas redes:',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF213366),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _SocialIcon(icon: Icons.facebook, onTap: () {}),
              const SizedBox(width: 24),
              _SocialIcon(icon: Icons.camera, onTap: () {}),
              const SizedBox(width: 24),
              _SocialIcon(icon: Icons.youtube_searched_for, onTap: () {}),
              const SizedBox(width: 24),
              _SocialIcon(icon: Icons.public, onTap: () {}),
            ],
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 16),
          Text(
            'Desenvolvido por Alura. Projeto fictício sem fins comerciais.',
            style: TextStyle(
              fontSize: 12,
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _SocialIcon({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: const Color(0xFF213366),
          size: 24,
        ),
      ),
    );
  }
}