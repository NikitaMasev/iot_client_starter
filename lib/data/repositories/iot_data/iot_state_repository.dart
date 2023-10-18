import 'package:iot_client_starter/data/repositories/models/iot_state.dart';
import 'package:iot_client_starter/data/sources/iot_provider/base/state_watcher.dart';

abstract interface class IotStateRepository implements StateWatcher<IotState> {}
