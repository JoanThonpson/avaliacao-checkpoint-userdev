import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev/src/core/theme/colors.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // === PRIMEIRA IMAGEM: Pessoa com camiseta e Texto ===
        Container(
          width: double.infinity,
          height: 340,
          margin: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: const DecorationImage(
              image: AssetImage('assets/images/Imagem_hero_mobile.png'), // Imagem de fundo
              fit: BoxFit.cover,
            ),
          ),
          
        ),

        // === SEGUNDA IMAGEM: Banner de Seções (abaixo) ===
        Container(
          width: double.infinity,
          height: 180, // Mantive a altura que você definiu
          margin: const EdgeInsets.fromLTRB(16, 0, 16, 16), // Espaçamento superior zero para colar levemente
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/images/Banner_secoes_Mobile.png'), // Segunda imagem
              fit: BoxFit.cover,
            ),
            // Adicionei uma sombra leve para dar profundidade, opcional
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            children: [
              // Overlay gradiente dark para dar leitura ao texto
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.85), // Escureci um pouco mais para melhor leitura
                    ],
                  ),
                ),
              ),
              // Conteúdo de Texto e Botão
              Positioned(
                bottom: 28,
                left: 24,
                right: 24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min, // Garante que a coluna ocupe o espaço mínimo
                  children: [
                    Text(
                      "Hora de abraçar",
                      style: GoogleFonts.orbitron(
                        fontSize: 29, 
                        fontWeight: FontWeight.bold, 
                        color: Colors.white,
                        height: 1.1,
                      ),
                    ),
                    Text(
                      "seu lado geek!",
                      style: GoogleFonts.orbitron(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        color: AppColors.accentPink, // Rosa neon
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white, // Cor do texto do botão
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                      child: Text(
                        "Ver as novidades!",
                        style: GoogleFonts.poppins(
                          fontSize: 16, 
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}