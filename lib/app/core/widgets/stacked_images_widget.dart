import 'package:eco_meter/app/core/constants/app_imports.dart';

class StackedImagesWidget extends StatelessWidget {
  const StackedImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 120,
      child: Stack(
        children: [
          for (int i = 0; i < 5; i++)
            Positioned(
              left: i * 15, // adjust overlap
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  AppImages.person1, // Replace with your icon
                ),
              ),
            ),
          // "+47" Circle at the end
          Positioned(
            left: 5 * 15, // adjust overlap
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '+47',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 16,
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
