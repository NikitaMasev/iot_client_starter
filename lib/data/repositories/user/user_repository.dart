import 'package:iot_models/iot_models.dart';

abstract interface class UserRepository {
  Future<Client?> getClient();

  Future<void> saveClient(final Client client);

  Future<void> removeClient();
}
