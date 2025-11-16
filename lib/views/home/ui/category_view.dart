import 'package:flutter/material.dart';

import '../../../core/components/products_list.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  appBar: buildCustomAppBar(context, category),
      body: ListView(
        children:  [
          SizedBox(
            height: 15,
          ),
          ProductsList(
            category: category,
          ),
        ],
      ),
    );
  }
}