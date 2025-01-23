import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';

class HomeSearchContiner extends StatelessWidget {
  const HomeSearchContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: EdgeInsets.all(12.0),
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 35.h,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 15,
              color: ColorsManager.darkGray.withValues(alpha: .8),
            ),
            horizontalSpace(12),
            Text('Search for hotel',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: ColorsManager.darkGray,
                    )),
          ],
        ),
      ),
    );
  }
}
