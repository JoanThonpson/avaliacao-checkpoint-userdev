class PromoProductModel {
  final String id;
  final String name;
  final double price;
  final double? originalPrice;
  final String imageUrl;
  final bool isPromotion;
  final String? badge;

  PromoProductModel({
    required this.id,
    required this.name,
    required this.price,
    this.originalPrice,
    required this.imageUrl,
    this.isPromotion = false,
    this.badge,
  });

  // Dados mockados dos produtos em destaque do Figma
  static List<PromoProductModel> mockPromoProducts() {
    return [
      PromoProductModel(
        id: '1',
        name: 'Camisetas Estágios',
        price: 35.00,
        imageUrl: 'assets/images/produto_camiseta.png',
        isPromotion: true,
        badge: 'Promoção',
      ),
      PromoProductModel(
        id: '2',
        name: 'Copa Vida de Dev',
        price: 28.00,
        imageUrl: 'assets/images/produto_copa.png',
      ),
      PromoProductModel(
        id: '3',
        name: 'Entregas Garantidas',
        price: 12.00,
        imageUrl: 'assets/images/produto_entrega.png',
        isPromotion: true,
        originalPrice: 24.00,
        badge: '50% OFF',
      ),
    ];
  }
}