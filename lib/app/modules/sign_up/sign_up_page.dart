import 'package:eco_meter/app/core/constants/app_imports.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUpPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SignUpPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}