import 'dart:developer';
import 'dart:io';

import 'package:notebook_control_desktop/core/constants/socket_constants.dart';
import 'package:result_dart/result_dart.dart';

class SocketService {
  ServerSocket? socket;

  AsyncResult<void> connect() async {
    try {
      socket = await ServerSocket.bind(InternetAddress.anyIPv4, kPort);
      return Success.unit();
    } on SocketException catch (e) {
      log(name: "LOG", "- SOCKET EXCEPTION: $e");
      return Failure(Exception(e));
    } catch (e) {
      log(name: "LOG", "- SOCKET EXCEPTION CATCH: $e");
      return Failure(Exception(e.toString()));
    }
  }

  Stream<String> listen() async* {
    socket!.listen((data) {
      data;
    });
  }

  void send() {}

  void disconnect() {}
}
