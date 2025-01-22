import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  return const Center(
    child: SearchHotelsShimmerLoading(),
  );
}

setupSuccess(searchedDocumentsList) {
  return SizedBox(
    height: 200.h,
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: searchedDocumentsList.length,
      itemBuilder: (context, index) {
        return SearchedHotelItem(
            hotelData:
                searchedDocumentsList[index].document.hotelsData);
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
  return const Center(
    child: Text('No Hotels Found'),
  );
}
