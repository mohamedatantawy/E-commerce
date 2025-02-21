import 'package:bloc/bloc.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  List<ProductEntity> product = [];
  void saveproduct(ProductEntity products) {
    product.add(products);
    emit(Cartsuccess());
  }

 bool showproduct(ProductEntity products) {
    return product.contains(products);
  }

  void removeproduct(ProductEntity products) {
    product.remove(products);
    emit(Cartsuccess());
  }
}
