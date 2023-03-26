import 'package:flutter/material.dart';

class RecipeBundle {
  final String judul;
  final String description, imageSrc;
  final Color color;

  RecipeBundle(
      {required this.judul,
        required this.description,
        required this.imageSrc,
        required this.color});
}

// Demo list
List<RecipeBundle> recipeBundles = [
  RecipeBundle(
    judul: "Brokoli",
    description: "",
    imageSrc: "assets/images/image8.png",
    color: Color(0xFFD82D40),
  ),
  RecipeBundle(
    judul: "Kangkung",
    description: "",
    imageSrc: "assets/images/image7.png",
    color: Color(0xFFD82D40),
  ),
  RecipeBundle(
    judul: "Daging Ayam",
    description: "",
    imageSrc: "assets/images/image6.png",
    color: Color(0xFFD82D40),
  ),
  RecipeBundle(
    judul: "Daging Sapi",
    description: "",
    imageSrc: "assets/images/image9.png",
    color: Color(0xFFD82D40),
  ),
];
