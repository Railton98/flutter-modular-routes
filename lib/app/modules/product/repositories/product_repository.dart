import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/modules/product/models/product_model.dart';

class ProductRepository extends Disposable {
  final Dio dio;

  ProductRepository(this.dio);

  Future<List<ProductModel>> obterProdutos(int idLoja) async {
    return _data.where((element) => element.storeId == idLoja).toList();
  }

  @override
  void dispose() {}
}

List<ProductModel> get _data => [
      ProductModel(
          storeId: 1,
          id: 1,
          name: "Areia para Gato",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image:
              "https://hr5v73bt2e7udmky2wffjz92-wpengine.netdna-ssl.com/wp-content/uploads/2017/11/nonagon-style-n9s-designer-pet-products-Dote-Grooming-Set-Colours_result.png"),
      ProductModel(
          storeId: 1,
          id: 2,
          name: "Brinquedo x",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image:
              "https://www.loyalpetzone.com/wp-content/uploads/2016/06/c-8-selector-dogs_174ea262-945c-4e32-a006-f399b93abdf2.png"),
      ProductModel(
          storeId: 1,
          id: 3,
          name: "Brinquedo Y",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 1,
          id: 4,
          name: "Bolinha",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 1,
          id: 5,
          name: "Raçao umida",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 1,
          id: 6,
          name: "Catnip",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 2,
          id: 7,
          name: "Ração Golden",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 2,
          id: 8,
          name: "Osso",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 2,
          id: 9,
          name: "Ossinho",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 2,
          id: 10,
          name: "Pneu Mordedor",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 2,
          id: 11,
          name: "Roupinha",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 2,
          id: 12,
          name: "Pedras para Jardim",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 2,
          id: 13,
          name: "Areia",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 3,
          id: 14,
          name: "Areia para Gato",
          description: "descri",
          price: "21,99",
          image:
              "https://hr5v73bt2e7udmky2wffjz92-wpengine.netdna-ssl.com/wp-content/uploads/2017/11/nonagon-style-n9s-designer-pet-products-Dote-Grooming-Set-Colours_result.png"),
      ProductModel(
          storeId: 3,
          id: 15,
          name: "Brinquedo x",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image:
              "https://www.loyalpetzone.com/wp-content/uploads/2016/06/c-8-selector-dogs_174ea262-945c-4e32-a006-f399b93abdf2.png"),
      ProductModel(
          storeId: 3,
          id: 16,
          name: "Brinquedo Y",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 3,
          id: 17,
          name: "Bolinha",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 3,
          id: 18,
          name: "Raçao umida",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 3,
          id: 19,
          name: "Catnip",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 4,
          id: 21,
          name: "Ração Golden",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 4,
          id: 22,
          name: "Osso",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 4,
          id: 23,
          name: "Ossinho",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 4,
          id: 24,
          name: "Pneu Mordedor",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 4,
          id: 25,
          name: "Roupinha",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 4,
          id: 26,
          name: "Pedras para Jardim",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
      ProductModel(
          storeId: 4,
          id: 27,
          name: "Areia",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          price: "21,99",
          image: "https://www.tomaziuspet.com.br/img/produtos/02.jpg"),
    ];
