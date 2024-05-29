import 'package:flutter/material.dart';
import 'package:crud_api_project01/product_list.dart';

void main() {
  runApp(CrudApp());
}

class CrudApp  extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductListScreen(),
    );
  }
}