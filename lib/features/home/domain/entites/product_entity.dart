class ProductEntity {
  final int idproduct;
  final String imageproduct;
  final String nametitle;
  final String subtitle;
  final num prices;
  final num rate;

  ProductEntity(  {required this.subtitle,
    required this.idproduct,
    required this.imageproduct,
    required this.nametitle,
    required this.prices,
    required this.rate,
  });
}
