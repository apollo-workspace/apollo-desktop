enum ServerStatusEnum { initialize, retry, connected, error }

extension ServerStatusEnumExtension on ServerStatusEnum {
  String get label {
    switch (this) {
      case ServerStatusEnum.initialize:
        return 'Inicializando Servidor...';

      case ServerStatusEnum.retry:
        return 'Reconectando...';

      case ServerStatusEnum.connected:
        return 'Conectado';

      case ServerStatusEnum.error:
        return 'Erro ao tentar iniciar o servidor';
    }
  }
}
