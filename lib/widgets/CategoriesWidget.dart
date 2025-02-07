import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var product = [
      {
        'id': 1,
        'name': 'Sukuna',
        'desc': 'Jujutsu Kisen',
        'price': '50',
        'promotion': '50'
      },
      {
        'id': 2,
        'name': 'Sukuna',
        'desc': 'Jujutsu Kisen',
        'price': '50',
        'promotion': '50'
      },
      {
        'id': 3,
        'name': 'Anya',
        'desc': 'Spy X Family',
        'price': '20',
        'promotion': '30'
      },
      {
        'id': 4,
        'name': 'Megumi',
        'desc': 'Jujutsu Kisen',
        'price': '50',
        'promotion': '50'
      },
      {
        'id': 5,
        'name': 'Anya',
        'desc': 'Spy X Family',
        'price': '20',
        'promotion': '30'
      },
      {
        'id': 6,
        'name': 'Mary',
        'desc': 'Mordern',
        'price': '20',
        'promotion': '50'
      },
      {
        'id': 7,
        'name': 'Luffy',
        'desc': 'One Piece',
        'price': '50',
        'promotion': '50'
      },
      {
        'id': 8,
        'name': 'Nezuko',
        'desc': 'Demon Slayer',
        'price': '50',
        'promotion': '50'
      },
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < product.length; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // add loop process i variable in images
                  Image.asset("images/$i.jpeg", width: 40, height: 40),
                  Text(
                    '${product[i]['name']}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF4C53A5),
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
