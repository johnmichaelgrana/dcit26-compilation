
import 'package:material_ui/material_ui.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF206B4B),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFE4F1E9),
            ),

            const SizedBox(height: 20),

            const Text(
              'Profile screen',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
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
