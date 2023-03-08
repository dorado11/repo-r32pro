import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreaAnun1Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for anuncioName widget.
  TextEditingController? anuncioNameController;
  String? Function(BuildContext, String?)? anuncioNameControllerValidator;
  // State field(s) for Dropcateg widget.
  String? dropcategValue;
  // State field(s) for anuncioDescription widget.
  TextEditingController? anuncioDescriptionController;
  String? Function(BuildContext, String?)?
      anuncioDescriptionControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for Divisa widget.
  String? divisaValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    anuncioNameController?.dispose();
    anuncioDescriptionController?.dispose();
    textController3?.dispose();
  }

  /// Additional helper methods are added here.

}
