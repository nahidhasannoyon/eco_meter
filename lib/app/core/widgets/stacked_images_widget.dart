import 'package:eco_meter/app/core/constants/app_imports.dart';

class StackedImagesWidget extends StatelessWidget {
  const StackedImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 120.w,
      child: Stack(
        children: [
          for (int i = 0; i < 5; i++)
            Positioned(
              left: i * 15, // adjust overlap
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  "assets/images/person_${i + 1}.png",
                ),
              ),
            ),
          // "+47" Circle at the end
          Positioned(
            left: 5 * 15, // adjust overlap
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: Colors.white,
              child: Container(
                width: 35.w,
                height: 35.h,
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '+5',
                    style: TextStyle(
                      fontFamily: AppFonts.poppins,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
