import 'package:flutter/material.dart';
import 'package:fuel_delivery_assignment/pages/order_placed_page.dart';
import 'package:fuel_delivery_assignment/widgets/default_button.dart';
import 'package:intl/intl.dart';

class OrderForm extends StatefulWidget {
  const OrderForm({super.key});

  @override
  State<OrderForm> createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  List time = [
    "11:00AM",
    "12:00PM",
    "01:00PM",
    "02:00PM",
    "03:00PM",
    "04:00PM",
    "05:00PM",
    "06:00PM",
  ];
  String? selectedAddress;
  String? selectedAsset;
  String? selectedProduct;
  String selectedTime = "";
  DateTime currentDate = DateTime.now();
  DateTime selectedDate =
      DateTime(DateTime.now().day, DateTime.now().month, DateTime.now().year);
  late String? formattedDate;
  @override
  Widget build(BuildContext context) {
    final monthDays = DateTime(currentDate.year, currentDate.month + 1, 0).day;

    List<String> address = [
      "RJRG+3GG,Tellamura,Tripura 799205,India",
      "MKGF+4GG,Mumbai,Maharashtra 579205,India",
    ];
    List<String> assets = [
      "Tank",
      "Other",
    ];
    List<String> products = [
      "Diesel - 20 litres(\$10.00)",
      "Petrol - 20 litres(\$20.00)",
    ];

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Shipping Address",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Change",
                  style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButtonFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please select an address';
              }
              return null;
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red)),
                hintText: "Address",
                labelText: "Shipping Address"),
            items: address
                .map((e) => DropdownMenuItem<String>(value: e, child: Text(e)))
                .toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedAddress = newValue!;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Assets",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Change",
                  style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButtonFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please select an asset';
              }
              return null;
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red)),
                hintText: "Assets",
                labelText: "Assets"),
            items: assets
                .map((e) => DropdownMenuItem<String>(value: e, child: Text(e)))
                .toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedAsset = newValue!;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Products",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Edit",
                  style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButtonFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please select a product';
              }
              return null;
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red)),
                hintText: "Products",
                labelText: "Products"),
            items: products
                .map((e) => DropdownMenuItem<String>(value: e, child: Text(e)))
                .toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedProduct = newValue!;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Date & Time",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(monthDays, (index) {
                  DateTime day =
                      DateTime(currentDate.year, currentDate.month, index + 1);
                  bool isToday = day.day == currentDate.day &&
                      day.month == currentDate.month &&
                      day.year == currentDate.year;
                  DateTime date = DateTime(day.year, day.month, day.day);
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDate = date;
                        formattedDate =
                            DateFormat('dd MMM yyyy').format(selectedDate);
                      });
                    },
                    child: Container(
                      width: 65,
                      height: 70,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: selectedDate == date
                              ? null
                              : (isToday
                                  ? null
                                  : Border.all(
                                      color: Colors.black.withOpacity(0.3))),
                          borderRadius: BorderRadius.circular(15),
                          color: selectedDate == date
                              ? const Color.fromARGB(198, 159, 119, 253)
                              : (isToday
                                  ? const Color.fromARGB(197, 0, 0, 0)
                                  : null)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${day.day}",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: selectedDate == date
                                    ? Colors.white
                                    : (isToday ? Colors.white : null)),
                          ),
                          Text(
                            months[currentDate.month - 1],
                            style:  TextStyle(
                              color : selectedDate == date
                                    ? Colors.white
                                    : (isToday ? const Color.fromARGB(255, 184, 181, 181) : null)),
                          ),
                          Text(
                            getDayOfWeek(day),
                            style: TextStyle(
                              color: selectedDate == date
                                  ? Colors.white
                                  : (isToday ? Colors.white : Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: time
                  .map((e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTime = e;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.3)),
                              color: selectedTime == e
                                  ? const Color.fromARGB(198, 159, 119, 253)
                                  : null),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              e,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: selectedTime == e
                                      ? Colors.white
                                      : const Color.fromARGB(255, 87, 82, 82)),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DefaultButton(
              text: "Checkout",
              press: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderPlacedPage(
                        selectedAddress: selectedAddress!,
                        selectedAsset: selectedAsset!,
                        selectedProduct: selectedProduct!,
                        selectedDate: formattedDate.toString(),
                        selectedTime: selectedTime,
                      ),
                    ),
                  );
                }
              })
        ],
      ),
    );
  }
}

String getDayOfWeek(DateTime day) {
  switch (day.weekday) {
    case 1:
      return 'Mon';
    case 2:
      return 'Tue';
    case 3:
      return 'Wed';
    case 4:
      return 'Thu';
    case 5:
      return 'Fri';
    case 6:
      return 'Sat';
    case 7:
      return 'Sun';
    default:
      return '';
  }
}
