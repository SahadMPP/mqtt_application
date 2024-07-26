import 'package:application_mqtt/data/datasource/mqtt_datasource.dart';
import 'package:application_mqtt/data/model/connection_model.dart';
import 'package:application_mqtt/domain/repositories/mqtt_repository.dart';

class MqttRepoImpl implements MqttRepo {
  MqttDatasource mqttDatasource = MqttDatasourceImpl();

  @override
  Future<ConnectionModel> initializeMQTTFromDateSource() async {
    final data = await mqttDatasource.initializeMQTT();
    return data;
  }

  @override
  void publishingToDataSource(
      {required String topic, required String message}) {
    final data = mqttDatasource.publishing(topic: topic, message: message);
    return data;
  }

  @override
  String subcriptionTopicToDataSource({required String topic}) {
   final data = mqttDatasource.subcriptionTopic(topic: topic);
   return data;
  }

  @override
  ConnectionModel unsubscribeFromDataSource({required String topic,required bool isConnected,required bool isSubcribed}) {
    final data = mqttDatasource.unsubscrib(topic: topic, isConnected: isConnected, isSubcribed: isSubcribed);
    return data;    
  }
}
