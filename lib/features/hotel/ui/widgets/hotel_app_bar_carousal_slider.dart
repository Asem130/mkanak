import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mkanak/core/widgets/crousal_slider.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';

class HotelAppBarCarousalSlider extends StatelessWidget {
  const HotelAppBarCarousalSlider({super.key, required this.hotelData});
  final HotelsData? hotelData;
  @override
  Widget build(BuildContext context) {
    return CustomCrouserSlider(
      height: MediaQuery.of(context).size.height * 0.3,
      secondes: 10,
      scrollDirection: Axis.horizontal,
      enlargeFactor: 0.3,
      viewportFraction: 1,
      items: hotelData!.images!.arrayValue!.values!
          .map((e) => CachedNetworkImage(
                imageUrl: e.stringValue!,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.cover,
              ))
          .toList(),
    );
  }
}
