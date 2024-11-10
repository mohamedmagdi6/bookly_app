abstract class Failure {
  String errorMessage;
  Failure({required this.errorMessage});
}

class ServiceFailure extends Failure {
  ServiceFailure({required super.errorMessage});
}

class NetworkMessage extends Failure {
  NetworkMessage({required super.errorMessage});
}
