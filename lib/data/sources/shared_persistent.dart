import 'package:iot_models/iot_models.dart';

abstract class SharedPersistent {
  Future<Client?> getSavedClient();

  Future<void> saveClient(final Client? client);
}
