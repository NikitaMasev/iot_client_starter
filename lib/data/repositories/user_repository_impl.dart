import 'package:iot_client_starter/data/repositories/user_repository.dart';
import 'package:iot_client_starter/data/sources/shared_persistent.dart';
import 'package:iot_models/iot_models.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this.sharedPersistent);

  final SharedPersistent sharedPersistent;

  @override
  Future<Client?> getClient() => sharedPersistent.getSavedClient();

  @override
  Future<void> removeClient() => sharedPersistent.saveClient(null);

  @override
  Future<void> saveClient(final Client client) =>
      sharedPersistent.saveClient(client);
}
