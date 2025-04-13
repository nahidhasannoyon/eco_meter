import 'package:eco_meter/app/core/constants/app_imports.dart';

class ResetPasswordPage extends GetView<ResetPasswordController> {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResetPasswordPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResetPasswordPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}