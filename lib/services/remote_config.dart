import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigService {

  final FirebaseRemoteConfig firebaseRemoteConfig = FirebaseRemoteConfig.instance;

  Future<List<String>> getCredentials ()async{
    
    List<String> _credentials = [];
    await firebaseRemoteConfig.setDefaults(<String, dynamic>{
      'username': '',
      'password': '',
    });

    await firebaseRemoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: Duration(seconds: 1),
      minimumFetchInterval: Duration(seconds: 1),
    ));

    bool updated = await firebaseRemoteConfig.fetchAndActivate();
    if (updated) {
    // the config has been updated, new parameter values are available.
      final String _username = firebaseRemoteConfig.getString('username');
      final String _password = firebaseRemoteConfig.getString('password');
      _credentials.insert(0, _username);
      _credentials.insert(1, _password);
    } else {
    // the config values were previously updated.
      final String _username = firebaseRemoteConfig.getString('username');
      final String _password = firebaseRemoteConfig.getString('password');
      _credentials.insert(0, _username);
      _credentials.insert(1, _password);
      
    }

    return _credentials;

  }



}

