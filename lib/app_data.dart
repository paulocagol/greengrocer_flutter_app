import 'package:my_app/cart_item_model.dart';
import 'package:my_app/item_model.dart';

ItemModel apple = ItemModel(
  'apple',
  'assets/fruits/apple.png',
  'KG',
  20.00,
  'A melhor maça da região',
);
ItemModel grape = ItemModel(
  'grape',
  'assets/fruits/grape.png',
  'KG',
  20.00,
  'A melhor maça da região',
);
ItemModel guava = ItemModel(
  'guava',
  'assets/fruits/guava.png',
  'KG',
  20.00,
  'A melhor maça da região',
);
ItemModel kiwi = ItemModel(
  'kiwi',
  'assets/fruits/kiwi.png',
  'KG',
  20.00,
  'A melhor maça da região',
);
ItemModel mango = ItemModel(
  'mango',
  'assets/fruits/mango.png',
  'KG',
  20.00,
  'A melhor maça da região',
);
ItemModel papaya = ItemModel(
  'papaya',
  'assets/fruits/papaya.png',
  'KG',
  20.00,
  'A melhor maça da região',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Legumes',
  'Frutas',
  'Doces',
];

List<CartItemModel> cartItems = [
  CartItemModel(item: apple, quantity: 2),
  CartItemModel(item: mango, quantity: 1),
  CartItemModel(item: grape, quantity: 5),
];
