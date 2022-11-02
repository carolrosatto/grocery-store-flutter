import 'package:green_market/src/models/cart_product_model.dart';
import 'package:green_market/src/models/product_model.dart';
import 'package:green_market/src/models/user_model.dart';

ProductModel apple = ProductModel(
  description:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
  imgUrl: 'assets/fruits/apple.png',
  productName: 'Maçã',
  price: 5.5,
  unit: 'kg',
);

ProductModel grape = ProductModel(
  imgUrl: 'assets/fruits/grape.png',
  productName: 'Uva',
  price: 7.4,
  unit: 'kg',
  description:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ProductModel guava = ProductModel(
  imgUrl: 'assets/fruits/guava.png',
  productName: 'Goiaba',
  price: 11.5,
  unit: 'kg',
  description:
      'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ProductModel kiwi = ProductModel(
  imgUrl: 'assets/fruits/kiwi.png',
  productName: 'Kiwi',
  price: 2.5,
  unit: 'un',
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ProductModel mango = ProductModel(
  imgUrl: 'assets/fruits/mango.png',
  productName: 'Manga',
  price: 2.5,
  unit: 'un',
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ProductModel papaya = ProductModel(
  imgUrl: 'assets/fruits/papaya.png',
  productName: 'Mamão papaya',
  price: 8,
  unit: 'kg',
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

List<ProductModel> products = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  "Frutas",
  "Grãos",
  "Verduras",
  "Carnes",
  "Cereais",
];

List<CartProductModel> cartProducts = [
  CartProductModel(product: apple, quantity: 2),
  CartProductModel(product: grape, quantity: 3),
  CartProductModel(product: papaya, quantity: 1),
];

UserModel user = UserModel(
  name: 'Davi Theo Duarte',
  email: 'davitheoduarte@tadex.com.br',
  phone: '47981670022',
  cpf: '106.366.210-90',
  password: '',
);
