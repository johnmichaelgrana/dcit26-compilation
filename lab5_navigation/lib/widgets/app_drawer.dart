
import 'package:material_ui/material_ui.dart';

class AppDrawer extends StatelessWidget {
  final VoidCallback onHome;
  final VoidCallback onAbout;

  const AppDrawer({
    super.key,
    required this.onHome,
    required this.onAbout,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF206B4B),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Navigation Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          ListTile(
            leading: const Icon(
              Icons.home,
              color: Color(0xFF206B4B),
            ),
            title: const Text('Home'),
            onTap: onHome,
          ),

          ListTile(
            leading: const Icon(
              Icons.info,
              color: Color(0xFF206B4B),
            ),
            title: const Text('About'),
            onTap: onAbout,
          ),
        ],
      ),
    );
  }
}
