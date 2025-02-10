import 'package:commerce8/core/utils/api_seervice.dart';
import 'package:commerce8/features/home/data/models/allproductmodel/allproductmodel.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:dio/dio.dart';

abstract class HomeRemoteDataSource {
  Future<List<ProductEntity>> fetchallproduct();
}

class HomeRemoteDataSourceImple extends HomeRemoteDataSource {
  final ApiSeervice apiSeervice;

  HomeRemoteDataSourceImple({required this.apiSeervice});
  @override
  Future<List<ProductEntity>> fetchallproduct() async {
    var data = await apiSeervice.get(endpoint: 'products');
    List<ProductEntity> products = getproducts(data);
    return products;
  }

  List<ProductEntity> getproducts(List< dynamic> data) {
    List<ProductEntity> products = [];
    // // for (int productmap in data) {
    // //   products.add(data[productmap]);
    // // }
    // for (int i = 0; i < data.length; i++) {
    //   products.add(data);
    //     }
    for (var productmap in data) {
      products.add(Allproductmodel.fromJson(productmap));
    }
    return products;
  }
}
