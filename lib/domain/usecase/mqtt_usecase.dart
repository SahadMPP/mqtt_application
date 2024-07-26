import 'package:application_mqtt/data/model/connection_model.dart';
import 'package:application_mqtt/data/repository/mqtt_repo_impl.dart';
import 'package:application_mqtt/domain/repositories/mqtt_repository.dart';

class MqttUsecase {
  MqttRepo mqttRepo = MqttRepoImpl();

  Future<ConnectionModel> initializeMQTTserver() async {
    final data = await mqttRepo.initializeMQTTFromDateSource();
    return data;
  }

  String subcriptionForTopic({required String topic}) {
    return '';
  }

  void publishing({required String topic, required String message}) {}

  ConnectionModel unsubscribeFromTopic({required String topic,required bool isConnected,required bool isSubcribed}) {
    final data = mqttRepo.unsubscribeFromDataSource(topic: topic,isConnected: isConnected,isSubcribed: isSubcribed);
    return data;
  }
}
