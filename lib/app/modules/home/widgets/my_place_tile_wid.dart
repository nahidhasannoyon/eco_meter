import 'package:eco_meter/app/core/constants/app_imports.dart';

class MyPlaceTileWid extends StatelessWidget {
  const MyPlaceTileWid({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(DetailsRoutes.details),
      child: Padding(
        padding: const EdgeInsets.all(8.0).w,
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20).w,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20).w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[tileLeftHalf(), tileRightHalf()],
            ),
          ),
        ),
      ),
    );
  }

  Column tileLeftHalf() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Home',
          style: TextStyle(
            fontFamily: AppFonts.poppins,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF1E1E1E),
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          children: [
            Text(
              '652',
              style: TextStyle(
                fontFamily: AppFonts.poppins,
                fontSize: 48.sp,
                fontWeight: FontWeight.w300,
                color: Color(0xFF47BA80),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5).w,
                  decoration: BoxDecoration(
                    color: Color(0xFF47BA80),
                    borderRadius: BorderRadius.circular(30).w,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 15.sp,
                        color: Colors.white,
                      ),
                      Text(
                        '13%',
                        style: TextStyle(
                          fontFamily: AppFonts.poppins,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'ppm',
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF47BA80),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column tileRightHalf() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15).w,
          decoration: BoxDecoration(
            color: Color(0xFF47BA80),
            borderRadius: BorderRadius.circular(30).w,
          ),
          child: Text(
            'Good',
            style: TextStyle(
              fontFamily: AppFonts.inter,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 15.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            StackedImagesWidget(),
            Row(
              children: [
                Text(
                  'View Details',
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF47BA80),
                  ),
                ),
                Icon(Icons.arrow_right, size: 20, color: Color(0xFF47BA80)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
