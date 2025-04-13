import 'package:eco_meter/app/core/constants/app_imports.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailsPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailsPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}