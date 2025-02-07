import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemsSamples extends StatelessWidget {
  const CartItemsSamples({super.key});

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
      }
    ];
    return Column(
      children: [
        for (int i = 1; i < product.length; i++)
          Container(
            height: 110,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  onChanged: (index) {},
                  activeColor: Color(0xFF4C53A5),
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("images/$i.jpeg"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${product[i]['name']}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Text(
                        "\$${product[i]['price']}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xFF4C53A5),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  )
                                ]),
                            child: Icon(
                              CupertinoIcons.minus,
                              size: 18,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "01",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xFF4C53A5),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  )
                                ]),
                            child: Icon(
                              CupertinoIcons.plus,
                              size: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
