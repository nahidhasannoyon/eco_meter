import 'package:eco_meter/app/core/constants/app_imports.dart';

class MyPlaceTileWid extends StatelessWidget {
  const MyPlaceTileWid({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(DetailsRoutes.details),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF1E1E1E),
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              '652',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w300,
                color: Color(0xFF47BA80),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFF47BA80),
                    borderRadius: BorderRadius.circular(30),
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
                          fontSize: 10,
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
                    fontSize: 16,
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
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          decoration: BoxDecoration(
            color: Color(0xFF47BA80),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            'Good',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              // TODO: Update the image section
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Positioned(
                  top: 2.5,
                  left: 2.5,
                  child: Image(
                    image: AssetImage(
                      AppImages.userPic, // Replace with your icon
                    ),
                    width: 36,
                    height: 36,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'View Details',
                  style: TextStyle(
                    fontSize: 12,
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
