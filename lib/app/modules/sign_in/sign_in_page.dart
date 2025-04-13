import 'package:eco_meter/app/core/constants/app_imports.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignInPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SignInPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}