import 'dart:convert';
import 'dart:io';

import 'package:iot_client_starter/data/sources/shared_persistent.dart';
import 'package:iot_models/iot_models.dart';

const _user = 'user';

class SharedPersistentImpl implements SharedPersistent {
  SharedPersistentImpl();

  @override
  Future<Client?> getSavedClient() async {
    final rawData = await _readFile(_user);

    if (rawData == null) {
      return null;
    } else {
      final map = jsonDecode(rawData) as Map<String, dynamic>;
      return Client.fromJson(map);
    }
  }

  @override
  Future<void> saveClient(final Client? client) async {
    if (client == null) {
      await _saveFile(_user, null);
    } else {
      final map = client.toJson();
      return _saveFile(_user, jsonEncode(map));
    }
  }

  Future<void> _saveFile(
    final String pathFile,
    final String? data,
  ) async {
    if (data == null) {
      await File(pathFile).delete();
    } else {
      await File(pathFile).writeAsString(data);
    }
  }

  Future<String?> _readFile(
    final String pathFile,
  ) async {
    final file = File(pathFile);

    if (file.existsSync()) {
      return file.readAsString();
    } else {
      return null;
    }
  }
}
