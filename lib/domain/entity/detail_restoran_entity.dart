import 'package:equatable/equatable.dart';

class DetailRestoranEntity extends Equatable {
  final bool error;
  final String message;
  final String id;
  final String name;
  final String description;
  final String pictureId;
  final String city;
  final String address;
  final String rating;
  final List<CategoryEntity> categories;
  final MenusEntity menus;
  final List<ConsumerReviewEntity> consumerReviews;

  DetailRestoranEntity(
      {this.error,
      this.message,
      this.id,
      this.name,
      this.description,
      this.pictureId,
      this.city,
      this.address,
      this.rating,
      this.categories,
      this.menus,
      this.consumerReviews});

  @override
  List<Object> get props => [
        error,
        message,
        id,
        name,
        description,
        pictureId,
        city,
        address,
        rating,
        categories,
        menus,
        consumerReviews
      ];
}

class CategoryEntity extends Equatable {
  final String name;

  CategoryEntity({this.name});

  @override
  List<Object> get props => [name];
}

class MenusEntity extends Equatable {
  final List<FoodsEntity> foods;
  final List<DrinksEntity> drinks;

  MenusEntity({this.foods, this.drinks});

  @override
  List<Object> get props => [foods, drinks];
}

class FoodsEntity extends Equatable {
  final String name;

  FoodsEntity({this.name});

  @override
  List<Object> get props => [name];
}

class DrinksEntity extends Equatable {
  final String name;

  DrinksEntity({this.name});

  @override
  List<Object> get props => [name];
}

class ConsumerReviewEntity extends Equatable {
  final String name;
  final String review;
  final String date;

  ConsumerReviewEntity({this.name, this.review, this.date});

  @override
  List<Object> get props => [name, review, date];
}
