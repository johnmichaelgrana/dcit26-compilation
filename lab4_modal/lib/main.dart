
import 'package:material_ui/material_ui.dart';
import 'widgets/sample_modal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sample Modal',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF206B4B),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (context) => const SampleModal(),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF206B4B),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 15,
            ),
          ),
          child: const Text('OPEN MODAL'),
        ),
      ),
    );
  }
}
