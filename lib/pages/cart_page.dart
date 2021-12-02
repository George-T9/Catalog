import 'package:catalog/models/cart_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CartList(),
            ),
            Divider(),
            TotalPrice(),
          ],
        ),
      ),
    );
  }
}

class TotalPrice extends StatefulWidget {
  const TotalPrice({Key? key}) : super(key: key);

  @override
  _TotalPriceState createState() => _TotalPriceState();
}

class _TotalPriceState extends State<TotalPrice> {


  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Total : \$${_cart.totalPrice}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Function not added yet!")));
            },
            child: Text("Buy"),
            style:
                ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder())),
          )
        ],
      ),
    );
  }
}

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty ?
        Text("Nothing to show") :
      ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.done),
            title: Text("${_cart.items[index].name}"),
            trailing: IconButton(icon: Icon(CupertinoIcons.clear_thick_circled),
              onPressed: () {
              _cart.remove(_cart.items[index]);
              setState(() {

              });
              },) ,
          );
        });
  }
}
