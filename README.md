# flutter

## **1️⃣ Flutter คืออะไร**

* **Flutter** คือ **Framework ของ Google** สำหรับสร้าง **แอปมือถือ, เว็บ, และเดสก์ท็อป** ด้วย **โค้ดเดียว (Single Codebase)**
* ใช้ภาษา **Dart**
* เน้น **UI ที่สวยและลื่นไหล (High Performance UI)**
* มี **Hot Reload** → แก้โค้ดแล้วเห็นผลทันที

---

## **2️⃣ โครงสร้างโปรเจกต์ Flutter**

```
my_app/
├─ android/          # ไฟล์ Android native
├─ ios/              # ไฟล์ iOS native
├─ lib/              # โค้ดหลัก Flutter (Dart)
│   ├─ main.dart     # จุดเริ่มต้นของแอป
│   ├─ widgets/      # แยกไฟล์ Widget / หน้า
├─ pubspec.yaml      # จัดการ dependencies, assets
├─ test/             # ทดสอบ Unit / Widget
```

* **lib/main.dart** → Entry point ของแอป
* **pubspec.yaml** → ประกาศ **แพ็กเกจ, fonts, images**
* **widgets/** → จัดเรียง Widget แต่ละหน้าให้เรียบร้อย

---

## **3️⃣ การทำงานของ Flutter App**

1. **main()** → ฟังก์ชันหลักเรียก runApp()

```dart
void main() {
  runApp(const MyApp());
}
```

2. **runApp(Widget)** → เริ่มต้น **Widget tree** ของ UI
3. **Widget Tree** → Flutter สร้าง UI เป็น **ต้นไม้ของ Widget**

   * ทุกอย่างใน Flutter คือ Widget
   * UI ถูก **render แบบ declarative** → เราเขียน “หน้าตา UI” ไม่ต้องคุมขั้นตอนการวาดเอง

---

## **4️⃣ Widget ใน Flutter**

### **ประเภทหลัก**

| ประเภท                   | ใช้งาน                 | ตัวอย่าง                             |
| ------------------------ | ---------------------- | ------------------------------------ |
| **StatelessWidget**      | UI คงที่ ไม่เปลี่ยนค่า | Text, Icon, Container                |
| **StatefulWidget**       | UI เปลี่ยนตามสถานะ     | Checkbox, Switch, TextField          |
| **Layout Widget**        | จัดเรียง UI            | Row, Column, Stack, GridView         |
| **Input Widget**         | รับข้อมูลผู้ใช้        | TextField, Switch, Checkbox, Radio   |
| **Navigation Widget**    | เปลี่ยนหน้า            | Navigator, NavigationBar, Drawer     |
| **Material / Cupertino** | UI ตามระบบ             | AppBar, Scaffold, Card, FilledButton |

---

### **ตัวอย่าง Widget หลัก**

```dart
Scaffold(
  appBar: AppBar(title: Text("My App")),
  body: Center(
    child: Column(
      children: [
        Text("Hello Flutter"),
        ElevatedButton(
          onPressed: () {},
          child: Text("Click Me"),
        ),
      ],
    ),
  ),
);
```

**อธิบาย:**

* `Scaffold` → โครงสร้างพื้นฐานแอป (AppBar, Body, BottomBar)
* `AppBar` → แถบด้านบน
* `Column` → จัดเรียง Widget แนวตั้ง
* `Text` → แสดงข้อความ
* `ElevatedButton` → ปุ่มกด

---

## **5️⃣ การจัดการหน้าจอ / Navigation**

* **Navigator.push()** → เปิดหน้าใหม่
* **Navigator.pop()** → กลับหน้าเดิม
* **Named Routes** → จัดการเส้นทางด้วยชื่อ

```dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const HomePage(),
    '/settings': (context) => const SettingsPage(),
  },
);
```

* **NavigationBar (Material 3)** → แถบด้านล่างไฮไลต์หน้าเลือก
* **Drawer** → เมนูด้านข้างเหมาะกับหลายหน้า

---

## **6️⃣ Layout / UI Design**

* **Row / Column** → แนวนอน / แนวตั้ง
* **Stack** → วาง Widget ซ้อนกัน
* **Container** → กำหนด **ขนาด, สี, ขอบ, เงา**
* **Card** → กล่องลอยเด่นบนพื้นหลัง
* **GridView / ListView** → แสดงรายการหลายรายการ

**ตัวอย่าง Card + ListTile**

```dart
Card(
  child: ListTile(
    leading: Icon(Icons.info),
    title: Text("Example Card"),
    subtitle: Text("รายละเอียด"),
  ),
);
```

---

## **7️⃣ Input / Selection Widgets**

* **TextField** → ช่องกรอกข้อความ
* **Switch / Checkbox / Radio** → ตัวเลือกเปิด/ปิด / เลือกหลาย / เลือกเดียว
* **Button** → กดสั่งงาน

**ตัวอย่าง**

```dart
Switch(value: true, onChanged: (v){});
Checkbox(value: false, onChanged: (v){});
Radio(value: 1, groupValue: 1, onChanged: (v){});
```

---

## **8️⃣ Feedback / Communication**

* **CircularProgressIndicator** → โหลด / Process
* **Badge** → แสดง Notification / Alert
* **SnackBar** → ข้อความ popup แจ้งเตือนผู้ใช้

---

## **9️⃣ Styling และ Material 3**

* **Color / Theme** → กำหนดสีหลัก, Accent, Font
* **Rounded corners, Shadow** → ทำ UI ลอยเด่น
* **FilledButton / ElevatedButton** → Material 3 buttons

---

## **10️⃣ Hot Reload / Hot Restart**

* **Hot Reload** → เปลี่ยน UI + โค้ดทันที โดยไม่รีสตาร์ทแอป
* **Hot Restart** → รีสตาร์ทแอปทั้งหมด

---

## **11️⃣ Summary การทำงาน**

1. **main() → runApp() → Widget tree**
2. **Stateless / Stateful Widget** → แสดง UI
3. **Layout Widgets** → จัดวาง UI
4. **Input / Button Widgets** → รับคำสั่งผู้ใช้
5. **Navigator / Routes** → สลับหน้าจอ
6. **Theme / Material 3** → ทำ UI สวยทันสมัย
7. **Hot Reload** → ทำให้พัฒนาเร็ว

---


