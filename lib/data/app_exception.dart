class AppException implements Exception {
  final _message;
  final _prefix;
  AppException([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchException extends AppException {
  FetchException([String? message])
      : super(message, "Error during communication");
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, "");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([String? message]) : super(message, '');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid Inpit');
}
