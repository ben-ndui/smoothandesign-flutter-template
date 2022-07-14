import 'package:firebase_core/firebase_core.dart';
import 'package:smoothstarter/core/configs/config_constants.dart';

class DefaultFirebaseOptions {

  static const currentPlatform = FirebaseOptions(
    apiKey: ConfigsConstants.firebaseApiKey,
    appId: ConfigsConstants.firebaseAppId,
    messagingSenderId: ConfigsConstants.firebaseMessagingSenderId,
    projectId: ConfigsConstants.firebaseProjectId,
  );

}
