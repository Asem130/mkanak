import 'package:flutter/material.dart';
import 'package:mkanak/core/widgets/crousal_slider.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';

class HotelAppBarCarousalSlider extends StatelessWidget {
  const HotelAppBarCarousalSlider({super.key, required this.documents});
  final List<HotelsDocuments?>? documents;
  @override
  Widget build(BuildContext context) {
    return CustomCrouserSlider(
      secondes: 10,
      scrollDirection: Axis.vertical,
      enlargeFactor: 0.3,
      viewportFraction: 1,
      items: creatListOfHotelImages(),
    );
  }

  List<Widget> creatListOfHotelImages() {
    final hotelImages = <Widget>[];

    for (final element in documents!) {
      final images = element?.hotelsData?.images?.arrayValue?.values;

      if (images != null && images.isNotEmpty) {
        for (final image in images) {
          final imageUrl = image.stringValue;
          if (imageUrl != null && imageUrl.isNotEmpty) {
            hotelImages.add(
              Stack(
                alignment: Alignment.center,
                children: [
                  // Display each image
                  Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.broken_image, size: 100),
                  ),
                  // Title overlay
                ],
              ),
            );
          }
        }
      }
    }
    return hotelImages;
  }
}
