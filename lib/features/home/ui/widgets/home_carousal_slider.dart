import 'package:flutter/material.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/features/home/ui/widgets/crousal_slider.dart';

class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomCrouserSlider(
        scrollDirection: Axis.vertical,
        enlargeFactor: 0.3,
        viewportFraction: 1,
        items: [
          Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  fit: BoxFit.cover,
                  'https://hoteldel.com/wp-content/uploads/2021/01/hotel-del-coronado-views-suite-K1TOS1-K1TOJ1-1600x900-1.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'SanStefano',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: ColorsManager.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// items:
      //imagesList.map((i) {
      //   return Stack(
      //     alignment: Alignment.center,
      //     fit: StackFit.expand,
      //     children: [
      //       ClipRRect(
      //         borderRadius: BorderRadius.circular(16),
      //         child: Image.network(
      //           fit: BoxFit.cover,
      //           i['mainImage'],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           i['name'],
      //           style: Theme.of(context)
      //               .textTheme
      //               .headlineMedium!
      //               .copyWith(color: ColorsManager.white),
      //         ),
      //       ),
      //     ],
      //   );
      // }).toList(),
      // scrollDirection: Axis.vertical,
      // enlargeFactor: 0.3,
      // viewportFraction: 1);