import 'package:flutter/material.dart';
import 'package:mkanak/core/themes/color_manger.dart';

class DiscoverRow extends StatelessWidget {
  const DiscoverRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Text(
            'Discover',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: ColorsManager.mutedBrown,
                  fontFamily: 'Popins',
                ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            color: ColorsManager.mutedBrown,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
