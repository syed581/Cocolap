import '/flutter_flow/flutter_flow_util.dart';
import 'kopage11_widget.dart' show Kopage11Widget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Kopage11Model extends FlutterFlowModel<Kopage11Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer;

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
