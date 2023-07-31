import 'package:get/get.dart';
import '../view/detail_plant_view.dart';
import 'package:flutter/material.dart';

class DetailPlantController extends GetxController {
  DetailPlantView? view;

  var itemOverview = [
    {
      "title": "56%",
      "icon": Icons.water_drop_outlined,
    },
    {
      "title": "Full Sun",
      "icon": Icons.brightness_5_outlined,
    },
    {
      "title": "30c",
      "icon": Icons.brightness_5_outlined,
    }
  ];
}
