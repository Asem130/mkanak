import 'package:flutter/material.dart';
import 'package:mkanak/core/themes/color_manger.dart';

class MostPopularRow extends StatelessWidget {
  const MostPopularRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Text(
            'Most Popular',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: ColorsManager.primarytealBlue,
                ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            color: ColorsManager.primarytealBlue,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
