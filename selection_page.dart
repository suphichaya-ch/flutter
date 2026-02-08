import 'package:flutter/material.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  final String codeSnippet = """
Switch(value: true, onChanged: (v){}),
Checkbox(value: true, onChanged: (v){}),
Radio(value: 1, groupValue: 1, onChanged: (v){}),
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selection Demo'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ======= UI Preview =======
            const Text(
              "UI Preview (Switch / Checkbox / Radio):",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Card(
              elevation: 5,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Switch
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Switch Example", style: TextStyle(fontSize: 16)),
                        Switch(value: true, onChanged: null),
                      ],
                    ),
                    const Divider(),
                    // Checkbox
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Checkbox Example", style: TextStyle(fontSize: 16)),
                        Checkbox(value: true, onChanged: null),
                      ],
                    ),
                    const Divider(),
                    // Radio
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Radio Example", style: TextStyle(fontSize: 16)),
                        Radio(value: 1, groupValue: 1, onChanged: null),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ======= Source Code =======
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
                      fontSize: 14),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ======= Explanation =======
            const Text(
              "Explanation:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Card(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    Text(
                      "Switch ใช้สำหรับเปิด/ปิดสถานะ เช่น on/off",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Checkbox ใช้เลือกหลายตัวเลือกได้พร้อมกัน",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Radio ใช้เลือกตัวเลือกเดียวในกลุ่ม (groupValue)",
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
