import 'package:flutter/material.dart';
import 'AppColors.dart';

class CardWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  const CardWidget(this.name, this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.only(left: 70, right: 30, top: 25),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
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
                  imageUrl,
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
                      Text(name,style: const TextStyle(
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
  }
}