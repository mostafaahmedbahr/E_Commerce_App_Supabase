import 'package:e_commerce_app_supabase/core/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProductsList extends StatelessWidget {
  const ProductsList({
    super.key,
    this.shrinkWrap,
    this.physics,
    this.query,
    this.category,
    this.isFavoriteView = false,
    this.isMyOrdersView = false,
  });

  final bool? shrinkWrap;
  final ScrollPhysics? physics;
  final String? query;
  final String? category;
  final bool isFavoriteView;
  final bool isMyOrdersView;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: shrinkWrap ?? true,
        physics: physics ?? const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard(
            onPaymentSuccess: () {
              // homeCubit.buyProduct(
              //     productId: products[index].productId!);
            },
            // isFavorite:
            // homeCubit.checkIsFavorite(products[index].productId!),
            isFavorite: true,
            onTap: () {
              // bool isFavorite = homeCubit
              //     .checkIsFavorite(products[index].productId!);
              // isFavorite
              //     ? homeCubit
              //     .removeFavorite(products[index].productId!)
              //     : homeCubit
              //     .addToFavorite(products[index].productId!);
            },
          //  product: products[index],
          );
        });
  }
}