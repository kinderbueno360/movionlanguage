//
// Generated file. Do not edit.
//

// ignore_for_file: lines_longer_than_80_chars

import 'package:audio_manager/audio_manager_web.dart';
import 'package:audio_session/audio_session_web.dart';
import 'package:just_audio_web/just_audio_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  AudioManagerPlugin.registerWith(registrar);
  AudioSessionWeb.registerWith(registrar);
  JustAudioPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
