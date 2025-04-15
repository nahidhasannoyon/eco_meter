import 'package:eco_meter/app/core/constants/app_imports.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Flex(
        direction: Axis.vertical,
        children: [
          Flexible(
            flex: 13,
            child: Center(
              child: Image.asset(
                AppImages.appLogo,
                width: 200.w,
                height: 200.h,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Powered by',
                  style: TextStyle(
                    fontFamily: AppFonts.inter,
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 5.w),
                Text(
                  'M360 ICT',
                  style: TextStyle(
                    fontFamily: AppFonts.inter,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
