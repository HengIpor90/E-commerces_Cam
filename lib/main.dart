import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Commerce'),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(
          color: Colors.white, // ☰ drawer icon color
        ),
      ),

      // ===================== DRAWER =====================
      drawer: Drawer(
        backgroundColor: const Color(0xFFF3E5F5), // drawer background
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'My Shop',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            // ===== Drawer Items =====
            drawerItem(
              icon: Icons.home,
              title: 'Home',
              iconColor: Colors.blue,
              onTap: () => Navigator.pop(context),
            ),
            drawerItem(
              icon: Icons.shopping_bag,
              title: 'Products',
              iconColor: Colors.green,
              onTap: () {},
            ),
            drawerItem(
              icon: Icons.shopping_cart,
              title: 'Cart',
              iconColor: Colors.orange,
              onTap: () {},
            ),
            drawerItem(
              icon: Icons.person,
              title: 'Profile',
              iconColor: Colors.purple,
              onTap: () {},
            ),
            drawerItem(
              icon: Icons.logout,
              title: 'Logout',
              iconColor: Colors.red,
              onTap: () {},
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          'Welcome to E-Commerce App',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

// ===================== Drawer Item Widget =====================
Widget drawerItem({
  required IconData icon,
  required String title,
  required Color iconColor,
  required VoidCallback onTap,
}) {
  return ListTile(
    leading: Icon(icon, color: iconColor),
    title: Text(
      title,
      style: const TextStyle(fontSize: 16),
    ),
    onTap: onTap,
  );
}
