import 'package:flutter/material.dart';
import 'package:mecato_uis_admin/views/screens/side_bar_screens/widgets/vendor_widget.dart';

class VendorScreen extends StatelessWidget {
  static const String routeName = '\VendorScreen';

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
        ));
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
              'Vendedores',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
          Row(
            children: [
              _rowHeader('Logo', 1),
              _rowHeader('Nombre Negocio', 3),
              _rowHeader('Ciudad', 2),
              _rowHeader('Departamento', 2),
              _rowHeader('Acción', 1),
              _rowHeader('Ver más', 1),
            ],
          ),

          VendorWidget(),
        ],
      ),
    );
  }
}
