import 'package:shopping_cart/models/Item.dart';

class CartItem {
  final Item item;
  int amount;

  CartItem({
    required this.item,
    required this.amount,
  });
}
