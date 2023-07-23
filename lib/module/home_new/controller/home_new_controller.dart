import 'package:get/get.dart';
import '../../../model/home/other.dart';
import '../../../service/home_service/home_service.dart';
import '../view/home_new_view.dart';

class HomeNewController extends GetxController {
  HomeNewView? view;
  @override
  void onInit() {
    doGetProduct();
    super.onInit();
  }

  List newCourse = [
    {
      "image":
          "https://i.ibb.co/FXX3wcy/Green-and-Yellow-Minimal-Vegetable-Plant-Presentation.jpg"
    },
    {
      "image":
          "https://i.ibb.co/yhX2V6F/Green-and-Yellow-Minimal-Vegetable-Plant-Presentation-1.jpg"
    },
    {
      "image":
          "https://i.ibb.co/drPFLVt/Green-and-Yellow-Minimal-Vegetable-Plant-Presentation-2.jpg"
    }
  ];

  List<Other> other = <Other>[];
  doGetProduct() async {
    final api = await HomeService().getProduct();

    other = api.other!;
    update();
  }

  List popuLarPlants = [
    {
      "image":
          "https://i.ibb.co/TL1zzkQ/orange-png-transparent-images-download-clip-art-4.png",
      "name": "Nabilla Eli Yulianti",
      "price": "30.0000"
    }
  ];

  List products = [
    {
      "product_name": "Brocoli",
      "photo_url":
          "https://i.ibb.co/GW4Cy4t/download-broccoli-png-image-with-transparent-background-png-image-pngimg-13.png",
      "price": 25.23,
      "rating": 5,
      "sold": 59,
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
    {
      "product_name": "Mango Fruit",
      "photo_url": "https://i.ibb.co/SyhZzkt/comhiclipartdskou.jpg",
      "price": 40.00,
      "rating": 4.5,
      "sold": 50,
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
    {
      "product_name": "Apple",
      "photo_url":
          "https://i.ibb.co/rmX5rCL/apple-transparent-fruit-clipart-7.png",
      "price": 33.11,
      "rating": 4.6,
      "sold": 100,
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
  ];
}

List categories = [
  "All",
  "Fruit",
  "Vegetable",
  "Meat",
  "Diary",
];
