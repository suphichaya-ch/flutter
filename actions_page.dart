import 'package:flutter/material.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({super.key});

  final String codeSnippet = """
// Primary Action
FilledButton(
  onPressed: () {},
  child: const Text('Filled Button'),
),

// Secondary Action
FilledButton.tonal(
  onPressed: () {},
  child: const Text('Tonal Button'),
),

// Elevated Button
ElevatedButton(
  onPressed: () {},
  child: const Text('Elevated Button'),
),
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actions'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== UI PREVIEW =====
            const Text(
              'UI Preview',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    // FilledButton - Primary Action
                    FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 24),
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      child: const Text('Filled Button'),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'FilledButton = ปุ่มสำคัญที่สุดในหน้า (Primary Action)',
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),

                    // FilledButton.tonal - Secondary Action
                    FilledButton.tonal(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 24),
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      child: const Text('Tonal Button'),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'FilledButton.tonal = ปุ่มสำคัญรอง (Secondary Action)',
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),

                    // ElevatedButton
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 24),
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      child: const Text('Elevated Button'),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'ElevatedButton = ปุ่มยกสูง (มี Shadow) เน้นปุ่มรองหรือให้ความลึก',
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 28),

            // ===== SOURCE CODE =====
            const Text(
              'Source Code',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),

            Card(
              color: const Color(0xFF1C1C1E), // dark code background
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    codeSnippet,
                    style: const TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 14,
                      color: Color(0xFF7CFC9A), // green color code
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
