import 'package:cisneros0453/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          splashImage(),
          const Gap(20),
          title(),
          const Gap(20),
          myButton()
        ],
      ),
    );
  }

  Widget splashImage() {
    return ShapeOfView(
      shape: ArcShape(
          direction: ArcDirection.Outside,
          height: 20,
          position: ArcPosition.Bottom),
      elevation: 8,
      child: Container(
        height: Get.height / 1.4,
        width: Get.width,
        decoration: BoxDecoration(
            color: const Color(0xff428df5)), // Cambio de color de fondo
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }

  Widget title() {
    return const Text(
      "Encuentra todo tu\nestilo",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
    );
  }

  Widget myButton() {
    return GestureDetector(
      onTap: () {
        Get.to(const DashboardScreen());
      },
      child: Container(
        height: 52,
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        decoration: BoxDecoration(
            color:
                const Color(0xff2359cf), // Cambio de color de fondo del botón
            borderRadius: BorderRadius.circular(42)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Ver ropa!",
                style: TextStyle(fontSize: 18, color: Colors.white)),
            const Gap(6),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
