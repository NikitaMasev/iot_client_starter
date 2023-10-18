import 'package:iot_models/iot_models.dart';

abstract interface class ClientRepository {
  void sendClient(final Client client);

  Stream<Client> watchClientModel();
}
