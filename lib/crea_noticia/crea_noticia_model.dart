import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreaNoticiaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for noticiOrganiz widget.
  TextEditingController? noticiOrganizController;
  String? Function(BuildContext, String?)? noticiOrganizControllerValidator;
  // State field(s) for noticiTlf widget.
  TextEditingController? noticiTlfController;
  String? Function(BuildContext, String?)? noticiTlfControllerValidator;
  // State field(s) for noticiEmail widget.
  TextEditingController? noticiEmailController;
  String? Function(BuildContext, String?)? noticiEmailControllerValidator;
  // State field(s) for noticiaName widget.
  TextEditingController? noticiaNameController;
  String? Function(BuildContext, String?)? noticiaNameControllerValidator;
  // State field(s) for noticiaDescription widget.
  TextEditingController? noticiaDescriptionController;
  String? Function(BuildContext, String?)?
      noticiaDescriptionControllerValidator;
  DateTime? datePicked;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    noticiOrganizController?.dispose();
    noticiTlfController?.dispose();
    noticiEmailController?.dispose();
    noticiaNameController?.dispose();
    noticiaDescriptionController?.dispose();
    textController6?.dispose();
  }

  /// Additional helper methods are added here.

}
