import 'package:flutter/material.dart';

// --- ส่วนที่คุณมีอยู่เดิม (SectionTitle, PreviewCard, CodeBlock, etc.) ---

// ✅ 1. เพิ่ม IOSFrame: เพื่อบีบหน้าจอให้เป็นทรงมือถือและทำมุมโค้ง
class IOSFrame extends StatelessWidget {
  final Widget child;
  const IOSFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F7), // สีเทาอ่อนแบบ iOS
        borderRadius:
            BorderRadius.circular(40), // มุมโค้งมนเหมือนขอบหน้าจอ iPhone
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: child,
      ),
    );
  }
}

// ✅ 2. เพิ่ม IOSListItem (Optional): ถ้าอยากให้ ListTile ดู iOS ขึ้นไปอีก
class IOSListItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const IOSListItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF007AFF)),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }
}

// --- คลาสเดิมของคุณ (วางต่อด้านล่างได้เลย) ---