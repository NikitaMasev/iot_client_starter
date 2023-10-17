import 'package:iot_models/iot_models.dart';

abstract interface class SharedPersistent {
  Future<Client?> getSavedClient();

  Future<void> saveClient(final Client? client);
}
