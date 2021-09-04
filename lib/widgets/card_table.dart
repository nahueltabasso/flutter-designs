import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.border_all, text: 'General'),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport'),
          ]
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.purple, icon: Icons.shop, text: 'Shopping'),
            _SingleCard(color: Colors.purpleAccent, icon: Icons.document_scanner_outlined, text: 'Bill'),
          ]
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.deepPurple, icon: Icons.cloud_outlined, text: 'Cloud'),
            _SingleCard(color: Colors.green, icon: Icons.food_bank_outlined, text: 'Restaurant'),
          ]
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.orange, icon: Icons.movie, text: 'Movies'),
            _SingleCard(color: Colors.green, icon: Icons.money, text: 'Dolar'),
          ]
        ),
        
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;
  
  const _SingleCard({Key? key, required this.icon, required this.color, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: Icon(this.icon, size: 35, color: Colors.white,),
          radius: 30,
        ),
        SizedBox(height: 10),
        Text(this.text, style: TextStyle(color: Colors.blue, fontSize: 18))
      ],
    );

    return _CardBackground(child: column);

    
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}