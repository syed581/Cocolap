import '/flutter_flow/flutter_flow_util.dart';
import 'kopage13_widget.dart' show Kopage13Widget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Kopage13Model extends FlutterFlowModel<Kopage13Widget> {
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
