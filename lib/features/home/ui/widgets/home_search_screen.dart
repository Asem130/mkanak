import 'package:flutter/material.dart';
import 'package:mkanak/core/helpers/space_vector.dart';

import 'package:mkanak/features/home/ui/widgets/home_search_text_form_field.dart';
import 'package:mkanak/features/home/ui/widgets/searched_hotels/searched_hotels_bloc_builder.dart';

class HomeSearchScreen extends StatelessWidget {
  const HomeSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              HomeSearchTextFormField(),
              verticalSpace(10),
              SearchedHotelsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
