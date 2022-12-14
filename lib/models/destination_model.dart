import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  final int price;

  DestinationModel({
    required this.id,
    this.city = '',
    this.imageUrl = '',
    this.name = '',
    this.price = 0,
    this.rating = 0.0,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'],
        city: json['city'],
        imageUrl: json['imageUrl'],
        rating: json['rating'].toDouble(),
        price: json['price'],
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        city,
        imageUrl,
        rating,
        price,
      ];
}
