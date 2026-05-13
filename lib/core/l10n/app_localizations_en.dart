// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get initializing_server_label => 'Initializing Server';

  @override
  String get connecting_label => 'Connecting';

  @override
  String get connected_label => 'Connected';

  @override
  String get start_server_error_label => 'Error trying to start the server.';
}
