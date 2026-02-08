import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {'title': 'Navigation', 'icon': Icons.navigation, 'route': '/navigation'},
      {'title': 'Inputs', 'icon': Icons.input, 'route': '/inputs'},
      {'title': 'Selection', 'icon': Icons.check_box, 'route': '/selection'},
      {'title': 'Containment', 'icon': Icons.widgets, 'route': '/containment'},
      {'title': 'Actions', 'icon': Icons.touch_app, 'route': '/actions'},
      {'title': 'Communication', 'icon': Icons.call, 'route': '/communication'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.9,
          physics: const BouncingScrollPhysics(),
          children: menuItems.map((item) {
            return InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () =>
                  Navigator.pushNamed(context, item['route'] as String),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item['icon'] as IconData,
                        size: 48, color: Colors.blue),
                    const SizedBox(height: 12),
                    Text(
                      item['title'] as String,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
