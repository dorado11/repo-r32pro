import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'botones_categorias_model.dart';
export 'botones_categorias_model.dart';

class BotonesCategoriasWidget extends StatefulWidget {
  const BotonesCategoriasWidget({Key? key}) : super(key: key);

  @override
  _BotonesCategoriasWidgetState createState() =>
      _BotonesCategoriasWidgetState();
}

class _BotonesCategoriasWidgetState extends State<BotonesCategoriasWidget> {
  late BotonesCategoriasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BotonesCategoriasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
      child: StreamBuilder<List<CategoriasRecord>>(
        stream: queryCategoriasRecord(),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
              ),
            );
          }
          List<CategoriasRecord> rowCategoriasRecordList = snapshot.data!;
          return Row(
            mainAxisSize: MainAxisSize.max,
            children: List.generate(rowCategoriasRecordList.length, (rowIndex) {
              final rowCategoriasRecord = rowCategoriasRecordList[rowIndex];
              return InkWell(
                onTap: () async {
                  setState(() {
                    FFAppState().CategSelec = rowCategoriasRecord.reference;
                  });
                },
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      Text(
                        rowCategoriasRecord.nombre!,
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
