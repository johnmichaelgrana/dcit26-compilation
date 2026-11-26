
import 'package:material_ui/material_ui.dart';
import '../widgets/app_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  void goHome(BuildContext context) {
    Navigator.of(context).popUntil(
      (route) => route.isFirst,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF206B4B),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      drawer: AppDrawer(
        onHome: () {
          Navigator.pop(context);
          goHome(context);
        },
        onAbout: () {
          Navigator.pop(context);
        },
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'About this app',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF206B4B),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'A separate screen.\n'
              'Built using Flutter navigation.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                goHome(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF206B4B),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 15,
                ),
              ),
              child: const Text('GO HOME'),
            ),
          ],
        ),
      ),
    );
  }
}
