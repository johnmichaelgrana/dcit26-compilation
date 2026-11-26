
import 'package:material_ui/material_ui.dart';
import 'profile_screen.dart';
import 'about_screen.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
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
        },
        onAbout: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AboutScreen(),
            ),
          );
        },
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome Home',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF206B4B),
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ProfileScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE4F1E9),
                foregroundColor: const Color(0xFF206B4B),
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 15,
                ),
              ),
              child: const Text('OPEN PROFILE'),
            ),
          ],
        ),
      ),
    );
  }
}
