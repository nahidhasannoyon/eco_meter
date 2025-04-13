import 'package:eco_meter/app/core/constants/app_imports.dart';

class VerifyOtpPage extends GetView<VerifyOtpController> {
  const VerifyOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VerifyOtpPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VerifyOtpPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}