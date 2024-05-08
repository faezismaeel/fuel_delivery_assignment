class MyOrders {
  static List<String> orders = [];

  static void addOrder(String order) {
    orders.add(order);
  }

  static void clearOrders() {
    orders.clear();
  }
}