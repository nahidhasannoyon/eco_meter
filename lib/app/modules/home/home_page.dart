import 'package:eco_meter/app/core/constants/app_imports.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xff00f97b).withValues(alpha: .1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: TextStyle(
                              fontFamily: AppFonts.poppins,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF838383),
                            ),
                          ),
                          Text(
                            'Ahmed Ariyan',
                            style: TextStyle(
                              fontFamily: AppFonts.poppins,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image(
                        image: AssetImage(AppImages.userPic),
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      text: 'You are in a ',
                      style: TextStyle(
                        fontFamily: AppFonts.poppins,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF838383),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'healthy ',
                          style: TextStyle(
                            fontFamily: AppFonts.poppins,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF47BA80),
                          ),
                        ),
                        TextSpan(
                          text: 'environment',
                          style: TextStyle(
                            fontFamily: AppFonts.poppins,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF838383),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Places',
                    style: TextStyle(
                      fontFamily: AppFonts.poppins,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return MyPlaceTileWid();
                    },
                    itemCount: 2,
                    shrinkWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF47BA80),
          onPressed: () {},
          child: Text(
            '+',
            style: TextStyle(
              fontFamily: AppFonts.poppins,
              fontSize: 34,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
