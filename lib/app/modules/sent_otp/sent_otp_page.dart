import 'package:eco_meter/app/core/constants/app_imports.dart';

class SentOtpPage extends GetView<SentOtpController> {
  const SentOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SentOtpPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SentOtpPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}