import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notebook_control_desktop/modules/splash/domain/enums/server_status_enum.dart';
import 'package:notebook_control_desktop/modules/splash/presentation/controllers/splash_controller.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late SplashController _controller;

  @override
  void initState() {
    super.initState();
    _controller = context.read<SplashController>();

    _controller.initialize();

    _controller.addListener(() async {
      if (_controller.serverStatus == ServerStatusEnum.connected) {
        await Future.delayed(Duration(seconds: 1));
        if (mounted) context.go('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: Colors.blueAccent.withOpacity(.15),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.desktop_windows_rounded,
                size: 60,
                color: Colors.blueAccent,
              ),
            ),

            const SizedBox(height: 32),

            const Text(
              'Notebook Control',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),

            const SizedBox(height: 12),

            Consumer<SplashController>(
              builder: (context, controller, widget) {
                return Column(
                  children: [
                    Text(
                      controller.serverStatus.label,
                      style: TextStyle(
                        color: Colors.white.withOpacity(.6),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 40),
                    Visibility(
                      visible:
                          controller.serverStatus != ServerStatusEnum.error,
                      child: CircularProgressIndicator(strokeWidth: 3),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        controller.error ?? "",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
