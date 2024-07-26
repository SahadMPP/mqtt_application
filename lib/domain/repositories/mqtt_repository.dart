import 'package:application_mqtt/data/model/connection_model.dart';

abstract class MqttRepo {

  Future<ConnectionModel> initializeMQTTFromDateSource();

  String subcriptionTopicToDataSource({required String topic});

  void publishingToDataSource({required String topic,required String message} );

  ConnectionModel unsubscribeFromDataSource({required String topic,required bool isConnected,required bool isSubcribed});
  
}