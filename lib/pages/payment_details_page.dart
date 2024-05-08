import 'package:flutter/material.dart';
import 'package:fuel_delivery_assignment/widgets/cart_summary.dart';
import 'package:fuel_delivery_assignment/widgets/default_button.dart';
import 'package:intl/intl.dart';

class PaymentDetailPage extends StatelessWidget {
  const PaymentDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
     String formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Details"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                      "Order Date : ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 249, 169, 90),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(formattedDate,
                         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
              ],
            ),
                const SizedBox(
                  height: 10,
                ),
                const CartSummary(),
                const SizedBox(
                  height: 300,
                ),
                DefaultButton(
                  text: "Confirm | \$244.82", 
                  press: (){
                    // MyOrders.addOrder(order)
                  },
                  ),
          ],
        ),
      ),
    );
  }
}