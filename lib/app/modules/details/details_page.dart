import 'package:eco_meter/app/core/constants/app_imports.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF838383),
          ),
          iconSize: 24,
          color: Color(0xFF838383),
        ),
        leadingWidth: 30.w.w,
        title: Row(
          children: [
            Image.asset(AppImages.homeIcon, height: 28.h, width: 28.w),
            SizedBox(width: 10.w),
            Text(
              'Home',
              style: TextStyle(
                fontFamily: AppFonts.poppins,
                fontSize: 24.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0).w,
            child: Container(
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
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                                size: 15,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 30.sp,
                      color: Color(0xFF2DF28F),
                    ),
                    Row(
                      children: [
                        Container(
                          color: Color(0xFF7184FF),
                          width: 24.w,
                          height: 7.h,
                        ),
                        SizedBox(width: 2.w),
                        Container(
                          color: Color(0xFFFF5557),
                          width: 24.w,
                          height: 7.h,
                        ),
                        SizedBox(width: 2.w),
                        Container(
                          color: Color(0xFF2DF28F),
                          width: 24.w,
                          height: 7.h,
                        ),
                        SizedBox(width: 2.w),
                        Container(
                          color: Color(0xFFEBED4D),
                          width: 24.w,
                          height: 7.h,
                        ),
                        SizedBox(width: 2.w),
                        Container(
                          color: Color(0xFFFA9D5A),
                          width: 24.w,
                          height: 7.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'History',
                  style: TextStyle(
                    fontFamily: AppFonts.inter,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF838383),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'See all',
                      style: TextStyle(
                        fontFamily: AppFonts.inter,
                        fontSize: 14.sp,
                        color: Color(0xFFADADAD),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.arrow_right, size: 20, color: Color(0xFFADADAD)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Image(image: AssetImage(AppImages.historyGraph)),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 150.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Persons',
                        style: TextStyle(
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp,
                        ),
                      ),

                      StackedImagesWidget(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10).w,
                  height: 150.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Color(0xFF6ABC93), Color(0xFFA1FFD0)],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Rooms',
                        style: TextStyle(
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w700,
                          fontSize: 48.sp,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10).w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30).w,
                        ),
                        child: Text(
                          '2 of them requires action',
                          style: TextStyle(
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp,
                            color: Color(0xff47ba80),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20).w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30, vertical: 10).w,
                    height: 150.h,
                    width: 160.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Plants',
                          style: TextStyle(
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w700,
                            fontSize: 24.sp,
                            color: Color(0xFF47BA80),
                          ),
                        ),
                        Image(
                          image: AssetImage(
                            AppImages.leafs, // Replace with your icon
                          ),
                          width: 55.w,
                          height: 55.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [Color(0xFF6ABC93), Color(0xFFA1FFD0)],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '43',
                        style: TextStyle(
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w700,
                          fontSize: 80.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
