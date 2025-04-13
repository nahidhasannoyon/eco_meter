import 'package:eco_meter/app/core/constants/app_imports.dart';

class AddPage extends GetView<AddController> {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}