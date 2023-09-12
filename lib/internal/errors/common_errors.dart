sealed class CommonError {
  final String err = '';
  Object? stackTrace;
}

class ErrorConnecting implements CommonError {
  @override
  String get err => 'Ошибка подключения. Сервер недоступен.';

  @override
  Object? stackTrace;
}

class ErrorConnectionInterrupted implements CommonError {
  @override
  String get err => 'Соединение прервано.';

  @override
  Object? stackTrace;
}

class ErrorUnknown implements CommonError {
  @override
  Object? stackTrace;

  @override
  String get err => 'Неизвестная ошибка.';
}
