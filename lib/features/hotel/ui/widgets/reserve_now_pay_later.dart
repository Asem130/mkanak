import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/space_vector.dart';

class ReserveNowPayLater extends StatelessWidget {
  const ReserveNowPayLater({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width / 2) - 12.w,
      child: Row(
        children: [
          Icon(
            Icons.check_sharp,
            color: const Color.fromARGB(255, 45, 170, 40),
            size: 20,
          ),
          horizontalSpace(5),
          Text(
            "Reserve now,pay later",
            maxLines: 2,
            style: TextStyle(
                fontSize: 13.sp,
                color: const Color.fromARGB(255, 45, 170, 40),
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
