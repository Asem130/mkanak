import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:mkanak/core/helpers/extensions.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/routes/routes.dart';
import 'package:mkanak/features/home/logic/home_cubit.dart';
import 'package:mkanak/features/home/logic/home_state.dart';
import 'package:mkanak/features/home/ui/widgets/searched_hotels/search_hotels_shimmer_loading.dart';
import 'package:mkanak/features/home/ui/widgets/searched_hotels/searched_hotel_item.dart';

class SearchedHotelsBlocBuilder extends StatelessWidget {
  const SearchedHotelsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is SearchedHotelsSuccses ||
            current is SearchedHotelsLoading ||
            current is SearchedHotelsError ||
            current is SearchedHotelsEmpty,
        builder: (context, state) {
          return state.maybeWhen(
            searchedHotelsLoading: () => setupLoading(),
            searchedHotelsSuccses: (documentsList) {
              return setupSuccess(documentsList);
            },
            searchedHotelsError: (error) => setupError(),
            searchedHotelsEmpty: () => setupEmpty(),
            orElse: () => SizedBox.shrink(),
          );
        });
  }
}

Widget setupLoading() {
  return Expanded(child: SearchHotelsShimmerLoading());
}

setupSuccess(searchedDocumentsList) {
  return Expanded(
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: searchedDocumentsList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: GestureDetector(
            onTap: () {
              context.pushNamed(Routes.hotelScreen);
            },
            child: SearchedHotelItem(
                hotelData: searchedDocumentsList[index].document.hotelsData),
          ),
        );
      },
    ),
  );
}

setupError() {
  return const Center(
    child: Text('Error'),
  );
}

Widget setupEmpty() {
  return Column(
    children: [
      verticalSpace(150),
      Text('No hotels found', style: TextStyle(fontSize: 20.sp)),
      Lottie.asset('assets/images/no_data.json', width: 200.w, height: 200.h),
    ],
  );
}
