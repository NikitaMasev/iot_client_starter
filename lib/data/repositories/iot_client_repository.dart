import 'package:iot_models/iot_models.dart';

abstract interface class IotClientRepository {
  void sendClient(final Client client);

  Stream<Client> watchClientModel();
}
