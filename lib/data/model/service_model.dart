class ServiceModel {
  final int id;
  final String name;
  final String description;
  final double price;

  ServiceModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
    );
  }
}