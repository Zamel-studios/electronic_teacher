import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String image;
  final String title;

  const GridItem({super.key, 
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 5,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(image, fit: BoxFit.cover,width: double.infinity,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 14,
                    fontFamily: "Cairo"),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
