import 'package:flutter/material.dart';
import 'Planet.dart';
import 'AppColors.dart';
import 'CardWidget.dart';

class PlanetsPage extends StatelessWidget {
final List<Planet> planets;

const PlanetsPage({Key? key, required this.planets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          title: const Text('Planets',style: TextStyle(
            fontSize: 40,
          ),),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  AppColors.endGradient,
                  AppColors.startGradient,
                ],
              ),
            ),
          ),
        ),
        body:
        ListView.builder(

          itemCount: planets.length,
          itemBuilder: (BuildContext context, int index){
          return CardWidget(planets[index].name, planets[index].imageUrl);
          },
        ),
      ),
    );
  }
}