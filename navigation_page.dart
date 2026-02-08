import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  final String codeSnippet = """
NavigationBar(
  destinations: const [
    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
  ],
),""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Demo'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ======= ตัวอย่าง NavigationBar =======
            const Text(
              "UI Preview (NavigationBar):",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // แสดง NavigationBar
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: NavigationBar(
                        selectedIndex: 0,
                        destinations: const [
                          NavigationDestination(
                              icon: Icon(Icons.home), label: 'Home'),
                          NavigationDestination(
                              icon: Icon(Icons.settings), label: 'Settings'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "สามารถเปลี่ยน selectedIndex เพื่อดูการเลือกต่าง ๆ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ======= ตัวอย่างโค้ด =======
            const Text(
              "Source Code:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Card(
              color: Colors.black87,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  codeSnippet,
                  style: const TextStyle(
                    color: Colors.greenAccent,
                    fontFamily: 'monospace',
                    fontSize: 14,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ======= คำอธิบาย =======
            const Text(
              "Explanation:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    Text(
                      "NavigationBar เป็น Widget สำหรับสร้างเมนูด้านล่างในสไตล์ Material 3",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "คุณสามารถกำหนด selectedIndex เพื่อแสดงหน้าที่เลือกอยู่",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "NavigationDestination ใช้กำหนด icon และ label ของแต่ละ tab",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ======= ตัวอย่าง NavigationBar เพิ่ม =======
            const Text(
              "Try More Styles:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    NavigationBar(
                      selectedIndex: 1,
                      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                      destinations: const [
                        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                        NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
                        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "สามารถซ่อน label หรือปรับ labelBehavior ได้",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
