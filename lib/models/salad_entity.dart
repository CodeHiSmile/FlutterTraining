import 'package:flutter_training/configs/app_configs.dart';

class SaladEntity {
  String? foodName;
  String? foodImage;
  int? recipes;
  bool? isFavorite;
  String? chefName;
  String? chefAvatar;

  SaladEntity({
    this.chefAvatar,
    this.chefName,
    this.foodImage,
    this.foodName,
    this.isFavorite,
    this.recipes,
  });
}

List<SaladEntity> listSalads = [
  SaladEntity(
    foodName: "Salad",
    foodImage: AppConfigs.imgSalad,
    recipes: 16278,
    isFavorite: true,
    chefAvatar: AppConfigs.imgElonMusk,
    chefName: "Hiep Tran Van",
  ),
  SaladEntity(
    foodName: "Vegetable and Fruit Green Salad",
    foodImage: AppConfigs.imgSalad,
    recipes: 16278,
    isFavorite: false,
    chefAvatar: AppConfigs.imgElonMusk,
    chefName: "Willard Purnell",
  ),
  SaladEntity(
    foodName: "Vegetable and Fruit Green Salad with Balsa Fish",
    foodImage: AppConfigs.imgSalad,
    recipes: 16278,
    isFavorite: false,
    chefAvatar: AppConfigs.imgElonMusk,
    chefName: "Jane Cooper",
  ),
  SaladEntity(
    foodName: "Fresh Seasoned Vegetable Salad",
    foodImage: AppConfigs.imgSalad,
    recipes: 16278,
    isFavorite: false,
    chefAvatar: AppConfigs.imgElonMusk,
    chefName: "Phyllis Godley",
  ),
  SaladEntity(
    foodName: "Vegetable Lettuce Salad with Simple",
    foodImage: AppConfigs.imgSalad,
    recipes: 16278,
    isFavorite: false,
    chefAvatar: AppConfigs.imgElonMusk,
    chefName: "Clinton Mcclure",
  ),
  SaladEntity(
    foodName: "Vegetable and Fruit Green Salad",
    foodImage: AppConfigs.imgSalad,
    recipes: 16278,
    isFavorite: false,
    chefAvatar: AppConfigs.imgElonMusk,
    chefName: "Hiep Tran Van",
  ),
  SaladEntity(
    foodName: "Vegetable and Fruit Green Salad",
    foodImage: AppConfigs.imgSalad,
    recipes: 16278,
    isFavorite: false,
    chefAvatar: AppConfigs.imgElonMusk,
    chefName: "Hiep Tran Van",
  ),
  SaladEntity(
    foodName: "Vegetable and Fruit Green Salad",
    foodImage: AppConfigs.imgSalad,
    recipes: 16278,
    isFavorite: false,
    chefAvatar: AppConfigs.imgElonMusk,
    chefName: "Hiep Tran Van",
  ),
  SaladEntity(
    foodName: "Vegetable and Fruit Green Salad",
    foodImage: AppConfigs.imgSalad,
    recipes: 16278,
    isFavorite: true,
    chefAvatar: AppConfigs.imgElonMusk,
    chefName: "Hiep Tran Van",
  ),
];
