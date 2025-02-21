import 'package:bloc/bloc.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:meta/meta.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());
  List<ProductEntity> product = [];
  void saveproduct(ProductEntity products) {
    product.add(products);
    emit(FavoriteUpdate());
  }

 bool showproduct(ProductEntity products) {
    return product.contains(products);
  }

  void removeproduct(ProductEntity products) {
    product.remove(products);
    emit(FavoriteUpdate());
  }
}
