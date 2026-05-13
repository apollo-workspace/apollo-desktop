import 'package:flutter/material.dart';
import 'package:notebook_control_desktop/core/services/socket/socket_service.dart';
import 'package:notebook_control_desktop/modules/splash/domain/enums/server_status_enum.dart';

class SplashController extends ChangeNotifier {
  SplashController({required SocketService socketService})
    : _socketService = socketService;

  final SocketService _socketService;
  ServerStatusEnum serverStatus = ServerStatusEnum.initialize;
  String? error;

  void initialize() async {
    int count = 1;

    await Future.delayed(Duration(seconds: 1));
    while (serverStatus != ServerStatusEnum.connected) {
      final result = await _socketService.connect();
      result.fold(
        (_) async {
          serverStatus = ServerStatusEnum.connected;
          notifyListeners();
        },
        (ex) {
          error = ex.toString();
          if (count >= 3) {
            serverStatus = ServerStatusEnum.error;
            notifyListeners();
            return;
          }

          serverStatus = ServerStatusEnum.retry;
          count++;
          notifyListeners();
        },
      );
    }
  }
}
