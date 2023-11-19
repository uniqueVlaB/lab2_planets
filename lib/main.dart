
import 'package:flutter/material.dart';
const List<({String name, String imageUrl})> planets =
[
  (name: "Mars", imageUrl: "https://i.pinimg.com/originals/73/f0/b3/73f0b3408c7d0bc312b0fb2d9fe9f4cb.png"),
  (name: "Venus", imageUrl: "https://images.vexels.com/media/users/3/203449/isolated/preview/5c54f244e824bc49de3eba5c9351f3cd-venus-planet-illustration.png"),
  (name: "Moon", imageUrl: "https://images.vexels.com/media/users/3/137782/isolated/preview/5317233afd8c42be610172dc89c5dd18-realistic-moon-by-vexels.png"),
  (name: "Uranus", imageUrl: "https://images.vexels.com/media/users/3/205477/isolated/preview/65bf7bfb23e192debb56168ca3e6e4e0-planet-uranus-illustration-by-vexels.png"),
  (name: "Earth", imageUrl: "https://images.vexels.com/media/users/3/157970/isolated/preview/c156b4270aea292b9b335dd463ea17eb-earth-planet-icon-earth-icon.png")
];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: const Color(0xFF9568F1),
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
                  Color(0xFF71C1FF),
                  Color(0xFF006FFF),
                ],
              ),
            ),
          ),
        ),
        body:
       ListView.builder(

           itemCount: planets.length,
           itemBuilder: (BuildContext context, int index){

             return Container(
               height: 150,
               margin: const EdgeInsets.only(left: 70, right: 30, top: 25),
               decoration: BoxDecoration(
                 color: const Color(0xFFB793EF),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.black.withOpacity(0.7),
                     spreadRadius: 0,
                     blurRadius: 10,
                     offset: const Offset(0, 10),
                   ),
                 ],
                 borderRadius: BorderRadius.circular(15.0),
               ),

             child: Stack(
               clipBehavior: Clip.none,
               children: [
               Positioned(
                 left: -50,
                 child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Image.network(
                     planets[index].imageUrl,
                     fit: BoxFit.cover,
                     height: 125,
                     width: 125,
                   ),
                   Container(

                     margin: const EdgeInsets.only(left: 20,top: 30,bottom: 30),

                     child:  Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(planets[index].name,style: const TextStyle(
                           fontSize: 24,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,

                         ),
                         ),
                         const Text("Milky way Galaxy",style: TextStyle(
                             color: Colors.white
                         ),
                         ),
                         const SizedBox(
                           width: 25,
                           child: Divider(
                             color: Colors.lightBlue,
                             thickness: 1,
                           ),
                         ),
                         Row(
                           children: [
                             const Icon(Icons.location_pin,color: Colors.white54,size: 20,),
                             const Text("54.6m Km",style: TextStyle(
                               color: Colors.white,

                             ),
                             ),
                             Container(
                                 margin: const EdgeInsets.only(left: 20),
                                 child: const Row(
                                   children: [
                                     Icon(Icons.flight_land,color: Colors.white54,size: 20,),
                                     Text("3.711 m/s",style: TextStyle(
                                       color: Colors.white,

                                     ),
                                     ),
                                   ],
                                 )
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
               ),
             ],
             ),
             );
           },
       ),
      ),
    );
  }
}


