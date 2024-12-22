import 'package:flutter/material.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/core/widgets/crousal_slider.dart';
import 'package:mkanak/features/home/data/models/boosters/home_booster_model.dart';

class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({super.key, this.documentsList});
  final List<HomeBoostersDocuments?>? documentsList;
  @override
  Widget build(BuildContext context) {
    return CustomCrouserSlider(
        scrollDirection: Axis.vertical,
        enlargeFactor: 0.3,
        viewportFraction: 1,
        items: documentsList?.map((i) {
              return Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      fit: BoxFit.cover,
                      i?.boostersData?.image?.stringValue ?? '',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      i?.boostersData?.title?.stringValue ?? '',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: ColorsManager.white),
                    ),
                  ),
                ],
              );
            }).toList() ??
            []);
  }
}

      // scrollDirection: Axis.vertical,
      // enlargeFactor: 0.3,
      // viewportFraction: 1);