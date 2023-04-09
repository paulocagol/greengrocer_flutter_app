import 'package:flutter/material.dart';
import 'package:my_app/cart_item_model.dart';
import 'package:my_app/quantity_widget.dart';
import 'package:my_app/utils_services.dart';

class CartTile extends StatefulWidget {
  final CartItemModel item;
  final Function(CartItemModel) remove;

  const CartTile({
    super.key,
    required this.item,
    required this.remove,
  });

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    var util = UtilServices();

    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Image.asset(
          widget.item.item.imageUrl,
          height: 60,
          width: 60,
        ),
        title: Text(
          widget.item.item.itemName,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          util.priceToCurrency(widget.item.totalPrice()),
          style: const TextStyle(color: Colors.green),
        ),
        trailing: QuantityWidget(
          isRemovable: true,
          suffixText: widget.item.item.unit,
          value: widget.item.quantity,
          result: (quantity) {
            setState(() {
              widget.item.quantity = quantity;

              if (quantity == 0) {
                widget.remove(widget.item);
              }
            });
          },
        ),
      ),
    );
  }
}
