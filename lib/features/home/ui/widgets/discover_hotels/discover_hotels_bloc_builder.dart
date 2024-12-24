import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mkanak/features/home/logic/home_cubit.dart';
import 'package:mkanak/features/home/logic/home_state.dart';
import 'package:mkanak/features/home/ui/widgets/discover_hotels/discover_hotels_shimmer_loading.dart';
import 'package:mkanak/features/home/ui/widgets/discover_hotels/discover_listview.dart';

class DiscoverHotelsBlocBuilder extends StatelessWidget {
  const DiscoverHotelsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is AllHotelsLoading ||
            current is AllHotelsSuccses ||
            current is AllHotelsError,
        builder: (context, state) {
          return state.maybeWhen(
            allHotelsLoading: () => setupLoading(),
            allHotelsSuccses: (documentsList) {
              return setupSuccess(documentsList);
            },
            allHotelsError: (error) => setupError(),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

Widget setupLoading() {
  return DiscoverHotelsShimmperLoading();
}

Widget setupSuccess(documentsList) {
  return DiscoverListView(
    documentsList: documentsList ?? [],
  );
}

Widget setupError() {
  return SizedBox.shrink();
}
