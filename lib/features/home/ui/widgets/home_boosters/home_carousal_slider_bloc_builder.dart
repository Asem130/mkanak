import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mkanak/features/home/logic/home_cubit.dart';
import 'package:mkanak/features/home/logic/home_state.dart';
import 'package:mkanak/features/home/ui/widgets/home_boosters/home_carousal_slider.dart';
import 'package:mkanak/features/home/ui/widgets/home_boosters/home_carousal_slider_shimmer.dart';

class HomeCarousalSliderBlocBuilder extends StatelessWidget {
  const HomeCarousalSliderBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is HomeBoostersLoading ||
            current is HomeBoostersSuccses ||
            current is HomeBoostersError,
        builder: (context, state) {
          return state.maybeWhen(
            homeBoostersLoading: () => setupLoading(),
            homeBoostersSuccses: (documentsList) {
              return setupSuccess(documentsList);
            },
            homeBoostersError: (error) => setupError(),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

Widget setupLoading() {
  return HomeCarousalSliderShimmer();
}

Widget setupSuccess(documentsList) {
  return HomeCarouselSlider(
    documentsList: documentsList ?? [],
  );
}

Widget setupError() {
  return SizedBox.shrink();
}
