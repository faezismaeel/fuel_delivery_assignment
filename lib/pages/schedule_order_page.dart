import 'package:flutter/material.dart';
import 'package:fuel_delivery_assignment/widgets/order_forms.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Order"),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 120,
                child: Stack(
                  children: [
                    Text("Active Profile"),
                    Positioned(
                        left: 95,
                        top: 5,
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.green,
                        ))
                  ],
                ),
              ),
              Text(
                "User",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              OrderForm(),
            ],
          ),
        ),
      ),
    );
  }
}
