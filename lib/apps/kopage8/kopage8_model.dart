import '/flutter_flow/flutter_flow_util.dart';
import 'kopage8_widget.dart' show Kopage8Widget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Kopage8Model extends FlutterFlowModel<Kopage8Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
