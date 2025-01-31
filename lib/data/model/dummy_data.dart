
import 'package:task31/data/model/flight_model.dart';

class DummyFlightData {
  static List<Flight> flights = [
    Flight(
      id: '1',
      airline: 'Emirates',
      origin: 'New York',
      destination: 'London',
      departureTime: DateTime(2024, 2, 15, 10, 30),
      arrivalTime: DateTime(2024, 2, 15, 22, 45),
      price: 599.99,
      imageUrl: 'assets/images/emirates.png',
    ),
    Flight(
      id: '2',
      airline: 'Delta',
      origin: 'San Francisco',
      destination: 'Tokyo',
      departureTime: DateTime(2024, 2, 20, 14, 15),
      arrivalTime: DateTime(2024, 2, 21, 16, 30),
      price: 899.50,
      imageUrl: 'assets/images/delta.png',
    ),
  ];
}