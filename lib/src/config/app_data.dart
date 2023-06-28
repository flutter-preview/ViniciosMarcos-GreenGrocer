import 'package:greengrocer/src/models/cart_item_model.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/models/order_model.dart';
import 'package:greengrocer/src/models/user_model.dart';

ItemModel apple = ItemModel(
  itemName: 'Maçã',
  imgUrl: 'assets/fruits/apple.png',
  unit: 'kg',
  price: 5.5,
  description: 'A melhor maça da região e que conta com o melhor preço.',
);

ItemModel grape = ItemModel(
  itemName: 'Uva',
  imgUrl: 'assets/fruits/grape.png',
  unit: 'kg',
  price: 7.4,
  description: 'A melhor uva da região e que conta com o melhor preço.',
);

ItemModel guava = ItemModel(
  itemName: 'Goiaba',
  imgUrl: 'assets/fruits/guava.png',
  unit: 'kg',
  price: 11.5,
  description: 'A melhor goiaba da região e que conta com o melhor preço.',
);

ItemModel kiwi = ItemModel(
  itemName: 'Kiwi',
  imgUrl: 'assets/fruits/kiwi.png',
  unit: 'kg',
  price: 13.75,
  description: 'O melhor Kiwi da região e que conta com o melhor preço.',
);

ItemModel mango = ItemModel(
  itemName: 'Manga',
  imgUrl: 'assets/fruits/mango.png',
  unit: 'kg',
  price: 2.35,
  description: 'A melhor Manga da região e que conta com o melhor preço.',
);

ItemModel papaya = ItemModel(
  itemName: 'Mamão',
  imgUrl: 'assets/fruits/papaya.png',
  unit: 'kg',
  price: 17.95,
  description:
      'O melhor mamão papaya da região e que conta com o melhor preço.',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categorias = [
  'Frutas',
  'Legumes',
  'Verduras',
  'Temperos',
  'Cereais',
];

List<CartItemModel> cartItems = [
  CartItemModel(item: apple, quantity: 2),
  CartItemModel(item: mango, quantity: 1),
  CartItemModel(item: guava, quantity: 5),
];

UserModel user = UserModel(
  phone: '46999843935',
  email: 'mvmarcos2809@gmail.com',
  cpf: '00000000191',
  password: '',
  name: 'Marcos Vinicios',
);

List<OrderModel> orders = [
  OrderModel(
    id: 'asd1fgh2jkl3',
    createdDateTime: DateTime.parse('2023-06-21 10:00:00'),
    overdueDateTime: DateTime.parse('2023-06-21 10:00:00'),
    items: [
      CartItemModel(item: apple, quantity: 2),
      CartItemModel(item: mango, quantity: 2),
    ],
    status: 'refunded',
    copyAndPaste: 'q1w2e3r4t5y6',
    total: 0,
  ),
  OrderModel(
    id: 'asd1fgh2jkl3',
    createdDateTime: DateTime.parse('2024-06-28 10:00:00'),
    overdueDateTime: DateTime.parse('2024-06-28 10:00:00'),
    items: [
      CartItemModel(item: guava, quantity: 2),
      CartItemModel(item: kiwi, quantity: 2),
    ],
    status: 'paid',
    copyAndPaste: 'q1w2e3r4t5y6',
    total: 0,
  ),
];
