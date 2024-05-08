import 'package:flutter/material.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Product',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 75, 74, 74),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Quantity',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 75, 74, 74),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Amount',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 75, 74, 74),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Diesel",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 75, 74, 74),
                            ),
                          ),
                          Text(
                            '20 litre',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 75, 74, 74),
                            ),
                          ),
                          Text(
                            '\$10.00',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 75, 74, 74),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery Fee",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 75, 74, 74),
                            ),
                          ),
                          SizedBox(),
                          Text(
                            '\$199.00',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 75, 74, 74),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "GST",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 75, 74, 74),
                            ),
                          ),
                          SizedBox(),
                          Text(
                            '\$35.82',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 75, 74, 74),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 75, 74, 74),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(),
                          Text(
                            '\$244.82',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 75, 74, 74),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}