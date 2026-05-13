import 'dart:io';

class NetworkInterfaceService {
  Future<String?> getLocalhost() async {
    final interfaces = await NetworkInterface.list(
      includeLoopback: false,
      type: InternetAddressType.IPv4,
    );

    for (final interface in interfaces) {
      for (final addr in interface.addresses) {
        return addr.address;
      }
    }

    return null;
  }
}
