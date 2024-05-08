import 'package:flutter/material.dart';
import 'package:fuel_delivery_assignment/pages/payment_details_page.dart';
import 'package:fuel_delivery_assignment/widgets/cart_summary.dart';
import 'package:fuel_delivery_assignment/widgets/default_button.dart';

class OrderPlacedPage extends StatelessWidget {
  final String selectedAddress;
  final String selectedAsset;
  final String selectedProduct;
  final String selectedDate;
  final String selectedTime;

  const OrderPlacedPage({
    super.key,
    required this.selectedAddress,
    required this.selectedAsset,
    required this.selectedProduct,
    required this.selectedDate,
    required this.selectedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 243, 243),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 243, 243),
        title: const Text('Checkout'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Billing Address",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        selectedAddress,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 100, 99, 99)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Change",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    selectedProduct,
                    style: const TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 100, 99, 99)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Date & Time",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    '$selectedDate , $selectedTime',
                    style: const TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 100, 99, 99)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Cart Summary",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const CartSummary(),
              const SizedBox(
                height: 10,
              ),
              DefaultButton(
                text: "\$244.82 Pay Now",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return const PaymentDetailPage();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
