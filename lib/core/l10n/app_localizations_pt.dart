// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get initializing_server_label => 'Inicializando Servidor';

  @override
  String get connecting_label => 'Conectando';

  @override
  String get connected_label => 'Conectado';

  @override
  String get start_server_error_label => 'Erro ao tentar iniciar o servidor.';
}
