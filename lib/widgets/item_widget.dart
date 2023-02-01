import 'package:flutter/material.dart';
import 'package:practice_one/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  ItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Colors.grey,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListTile(
            leading: Image.network(item.image),
            title: Text(item.name),
            subtitle: Text(item.desc),
            trailing: Text(
              "\$${item.price}",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.deepOrange[900]),
            ),
          ),
        ),
      ),
    );
  }
}
