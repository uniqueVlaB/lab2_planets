import 'package:flutter/material.dart';
import 'Planet.dart';
import 'PlanetsPage.dart';

void main() {
  final List<Planet> planets =
  [
    const Planet(name: "Mars", imageUrl: "https://i.pinimg.com/originals/73/f0/b3/73f0b3408c7d0bc312b0fb2d9fe9f4cb.png"),
    const Planet(name: "Venus", imageUrl: "https://images.vexels.com/media/users/3/203449/isolated/preview/5c54f244e824bc49de3eba5c9351f3cd-venus-planet-illustration.png"),
    const Planet(name: "Moon", imageUrl: "https://images.vexels.com/media/users/3/137782/isolated/preview/5317233afd8c42be610172dc89c5dd18-realistic-moon-by-vexels.png"),
    const Planet(name: "Uranus", imageUrl: "https://images.vexels.com/media/users/3/205477/isolated/preview/65bf7bfb23e192debb56168ca3e6e4e0-planet-uranus-illustration-by-vexels.png"),
    const Planet(name: "Earth", imageUrl: "https://images.vexels.com/media/users/3/157970/isolated/preview/c156b4270aea292b9b335dd463ea17eb-earth-planet-icon-earth-icon.png")
  ];
  runApp(PlanetsPage(planets: planets));
}




