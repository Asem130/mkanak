import 'package:flutter/material.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';
import 'package:mkanak/features/hotel/ui/widgets/hotel_sliver_app_bar.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({
    super.key,
    this.args,
  });
  final List<HotelsDocuments?>? args;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            HotelSliverAppBar(hotelData: args),
          ],
        ),
      ),
    );
  }
}
