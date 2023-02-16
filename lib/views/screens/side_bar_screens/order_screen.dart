

import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget{
  static const String routeName = '\OrderScreen';

  Widget _rowHeader(String text, int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.green,
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Pedidos',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
          Row(
            children: [
              _rowHeader('Imagen', 1),
              _rowHeader('Nombre Completo', 3),
              _rowHeader('Ciudad', 2),
              _rowHeader('Departamento', 2),
              _rowHeader('Acción', 1),
              _rowHeader('Ver más', 1),
            ],
          ),
        ],
      ),
    ); 
  }
}