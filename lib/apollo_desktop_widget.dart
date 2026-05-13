import 'package:flutter/material.dart';
import 'package:notebook_control_desktop/core/l10n/app_localizations.dart';
import 'package:notebook_control_desktop/core/router/routes.dart';
import 'package:notebook_control_desktop/core/services/network_interface/network_interface_service.dart';
import 'package:notebook_control_desktop/core/services/socket/socket_service.dart';
import 'package:notebook_control_desktop/modules/splash/presentation/controllers/splash_controller.dart';
import 'package:provider/provider.dart';

class ApolloDesktopWidget extends StatelessWidget {
  const ApolloDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => NetworkInterfaceService()),
        ProxyProvider<NetworkInterfaceService, SocketService>(
          update: (_, networkService, _) {
            return SocketService();
          },
        ),
        ChangeNotifierProvider(
          create: (context) =>
              SplashController(socketService: context.read<SocketService>()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
