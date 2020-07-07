import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'package:modular_navigation_routes/app/modules/store/models/store_model.dart';

class StoreRepository extends Disposable {
  final Dio dio;

  StoreRepository(this.dio);

  Future<List<StoreModel>> getStores() async {
    return _data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}

get _data => [
      StoreModel(1, "Cat Lovers", "cat_lovers.png"),
      StoreModel(2, "Dog Foods", "dog_foods.png"),
      StoreModel(3, "Pet Lovers", "pet_lovers.png"),
      StoreModel(4, "Pet Shops", "pet_shops.png"),
    ];
