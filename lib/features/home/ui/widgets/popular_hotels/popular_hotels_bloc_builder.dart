import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mkanak/features/home/logic/home_cubit.dart';
import 'package:mkanak/features/home/logic/home_state.dart';
import 'package:mkanak/features/home/ui/widgets/popular_hotels/popular_hotels_listview.dart';
import 'package:mkanak/features/home/ui/widgets/popular_hotels/popular_hotels_shimmper_loading.dart';

class PopularHotelsBlocBuilder extends StatelessWidget {
  const PopularHotelsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is PopularHotelsLoading ||
            current is PopularHotelsSuccses ||
            current is PopularHotelsError,
        builder: (context, state) {
          return state.maybeWhen(
            popularHotelsLoading: () => setupLoading(),
            popularHotelsSuccses: (documentsList) {
              return setupSuccess(documentsList);
            },
            popularHotelsError: (error) => setupError(),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

Widget setupLoading() {
  return PopularHotelsShimmperLoading();
}

Widget setupSuccess(documentsList) {
  return PopularHotelsListView(
    documentsList: documentsList ?? [],
  );
}

Widget setupError() {
  return SizedBox.shrink();
}
