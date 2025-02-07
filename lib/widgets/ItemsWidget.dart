import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

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
    return GridView.count(
      childAspectRatio: 0.68,
      // It disable to scroll grid view and will scroll for home page
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < product.length; i++)
          Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
            ),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "${product[i]['promotion']}%",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "goToCartPage");
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/$i.jpeg",
                      height: 90,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${product[i]['name']}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${product[i]['desc']}",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${product[i]['price']}",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
