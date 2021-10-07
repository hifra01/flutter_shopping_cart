import 'package:flutter/material.dart';
import 'package:shopping_cart/models/CartItem.dart';
import 'package:shopping_cart/utils/CartItemGenerator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CartItem> cartItems = CartItemGenerator.generate();
  int _totalPrice = 0;

  void _countTotal() {
    int _tempTotal = 0;
    cartItems.forEach((element) {
      _tempTotal += (element.amount * element.item.price);
    });
    _totalPrice = _tempTotal;
  }

  void _changeItemAmount(index, newAmount) {
    setState(() {
      cartItems[index].amount = newAmount;
    });
  }

  @override
  Widget build(BuildContext context) {
    _countTotal();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Shopping Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, i) {
                return Card(
                  elevation: 2,
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: AssetImage(cartItems[i].item.imageAssetPath),
                          width: 120,
                        ),
                        Flexible(
                          child: Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    cartItems[i].item.name,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    'Rp${cartItems[i].item.price}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    '${cartItems[i].amount}' +
                                        (cartItems[i].amount > 1
                                            ? ' items'
                                            : ' item'),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () async {
                                    final result =
                                        await Navigator.of(context).pushNamed(
                                      '/detail',
                                      arguments: cartItems[i],
                                    );

                                    if (result != null) {
                                      _changeItemAmount(i, result);
                                    }
                                  },
                                  child: Text('See detail'),
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(double.infinity, 30)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 5,
                  offset: Offset(0, 0.2),
                ),
              ],
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Price:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Rp$_totalPrice',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
