import 'package:eco_meter/app/core/constants/app_imports.dart';

class ResultPage extends GetView<ResultController> {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResultPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResultPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}