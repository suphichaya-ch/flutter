import 'package:flutter/material.dart';

// นำเข้า widget ทุกหน้า
import 'menu_page.dart';
import 'navigation_page.dart';
import 'inputs_page.dart';
import 'selection_page.dart';
import 'containment_page.dart';
import 'actions_page.dart';
import 'comm_page.dart';

void main() {
  runApp(const MobileWebDemo());
}

class MobileWebDemo extends StatelessWidget {
  const MobileWebDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mobile Web Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuPage(),
        '/navigation': (context) => const NavigationPage(),
        '/inputs': (context) => const TextInputsPage(),
        '/selection': (context) => const SelectionPage(),
        '/containment': (context) => const ContainmentPage(),
        '/actions': (context) => const ActionsPage(),
        '/communication': (context) => const CommunicationPage(),
      },
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.grey[300],
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 30,
                    offset: Offset(0, 15),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 375,
                  height: 812,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      child!, // หน้า content จริง
                      // ✅ Status bar เลียนแบบ iPhone
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 44,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black54, Colors.transparent],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.signal_cellular_4_bar,
                                  color: Colors.white, size: 18),
                              Row(
                                children: const [
                                  Icon(Icons.wifi,
                                      color: Colors.white, size: 18),
                                  SizedBox(width: 6),
                                  Icon(Icons.battery_full,
                                      color: Colors.white, size: 18),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // ✅ Notch / กล้องบน
                      Positioned(
                        top: 0,
                        left: (375 / 2) - 30,
                        child: Container(
                          width: 100,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
