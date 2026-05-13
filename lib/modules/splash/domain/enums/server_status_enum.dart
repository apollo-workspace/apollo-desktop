import 'package:notebook_control_desktop/core/l10n/app_localizations.dart';

enum ServerStatusEnum { initialize, retry, connected, error }

extension ServerStatusEnumExtension on ServerStatusEnum {
  String label(AppLocalizations locale) {
    switch (this) {
      case ServerStatusEnum.initialize:
        return locale.initializing_server_label;

      case ServerStatusEnum.retry:
        return locale.connecting_label;

      case ServerStatusEnum.connected:
        return locale.connected_label;

      case ServerStatusEnum.error:
        return locale.start_server_error_label;
    }
  }
}
