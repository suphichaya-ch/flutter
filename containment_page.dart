import 'package:flutter/material.dart';

class ContainmentPage extends StatelessWidget {
  const ContainmentPage({super.key});

  final String codeSnippet = """
Card(
  child: ListTile(
    leading: Icon(Icons.info),
    title: Text('Material Card'),
  ),
),
Divider(),
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Containment Demo'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== UI Preview =====
            const Text(
              'UI Preview (Cards / Divider)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    Card(
                      elevation: 3,
                      child: ListTile(
                        leading: Icon(Icons.info, color: Colors.blue),
                        title: Text('Material Card Example'),
                        subtitle: Text('จัดกลุ่มเนื้อหาด้วย Card'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(thickness: 2),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ===== Source Code =====
            const Text(
              'Source Code',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Card(
              color: Colors.black87,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    codeSnippet,
                    style: const TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 14,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ===== Explanation =====
            const Text(
              'Explanation',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    Text(
                      'Card ใช้สำหรับจัดกลุ่มเนื้อหา และสร้างพื้นที่ยกขึ้น',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'สามารถวาง Widget อื่นๆ ข้างใน เช่น ListTile, Column, Image',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Divider ใช้แยก content ให้ชัดเจนและเรียบร้อย',
                      style: TextStyle(fontSize: 16),
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
