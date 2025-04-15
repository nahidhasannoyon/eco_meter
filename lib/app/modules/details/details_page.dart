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
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF838383),
          ),
          iconSize: 24,
          color: Color(0xFF838383),
        ),
        leadingWidth: 30,
        title: Row(
          children: [
            Image.asset(AppImages.homeIcon, height: 28, width: 28),
            const SizedBox(width: 10),
            const Text(
              'Home',
              style: TextStyle(
                fontFamily: AppFonts.poppins,
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                color: Color(0xFF47BA80),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Good',
                style: TextStyle(
                  fontFamily: AppFonts.inter,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                                  fontFamily: AppFonts.poppins,
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
                            fontFamily: AppFonts.poppins,
                            fontSize: 16,
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
                      size: 30,
                      color: Color(0xFF2DF28F),
                    ),
                    Row(
                      children: [
                        Container(
                          color: Color(0xFF7184FF),
                          width: 24,
                          height: 7,
                        ),
                        SizedBox(width: 2),
                        Container(
                          color: Color(0xFFFF5557),
                          width: 24,
                          height: 7,
                        ),
                        SizedBox(width: 2),
                        Container(
                          color: Color(0xFF2DF28F),
                          width: 24,
                          height: 7,
                        ),
                        SizedBox(width: 2),
                        Container(
                          color: Color(0xFFEBED4D),
                          width: 24,
                          height: 7,
                        ),
                        SizedBox(width: 2),
                        Container(
                          color: Color(0xFFFA9D5A),
                          width: 24,
                          height: 7,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'History',
                  style: TextStyle(
                    fontFamily: AppFonts.inter,
                    fontSize: 16,
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
                        fontSize: 14,
                        color: Color(0xFFADADAD),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.arrow_right, size: 20, color: Color(0xFFADADAD)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Image(image: AssetImage(AppImages.historyGraph)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: 160,
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
                          fontSize: 24,
                        ),
                      ),

                      StackedImagesWidget(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
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
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w700,
                          fontSize: 48,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '2 of them requires action',
                          style: TextStyle(
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Color(0xff47ba80),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    height: 150,
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Plants',
                          style: TextStyle(
                            fontFamily: AppFonts.inter,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color(0xFF47BA80),
                          ),
                        ),
                        Image(
                          image: AssetImage(
                            AppImages.leafs, // Replace with your icon
                          ),
                          width: 55,
                          height: 55,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF6ABC93), Color(0xFFA1FFD0)],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '43',
                        style: TextStyle(
                          fontFamily: AppFonts.inter,
                          fontWeight: FontWeight.w700,
                          fontSize: 80,
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
