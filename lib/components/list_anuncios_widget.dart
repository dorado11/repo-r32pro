import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'list_anuncios_model.dart';
export 'list_anuncios_model.dart';

class ListAnunciosWidget extends StatefulWidget {
  const ListAnunciosWidget({Key? key}) : super(key: key);

  @override
  _ListAnunciosWidgetState createState() => _ListAnunciosWidgetState();
}

class _ListAnunciosWidgetState extends State<ListAnunciosWidget> {
  late ListAnunciosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListAnunciosModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
      child: PagedListView<DocumentSnapshot<Object?>?, AnunciosRecord>(
        pagingController: () {
          final Query<Object?> Function(Query<Object?>) queryBuilder =
              (anunciosRecord) =>
                  anunciosRecord.where('Activo', isEqualTo: true);
          if (_model.pagingController != null) {
            final query = queryBuilder(AnunciosRecord.collection);
            if (query != _model.pagingQuery) {
              // The query has changed
              _model.pagingQuery = query;
              _model.streamSubscriptions.forEach((s) => s?.cancel());
              _model.streamSubscriptions.clear();
              _model.pagingController!.refresh();
            }
            return _model.pagingController!;
          }

          _model.pagingController = PagingController(firstPageKey: null);
          _model.pagingQuery = queryBuilder(AnunciosRecord.collection);
          _model.pagingController!.addPageRequestListener((nextPageMarker) {
            queryAnunciosRecordPage(
              queryBuilder: (anunciosRecord) =>
                  anunciosRecord.where('Activo', isEqualTo: true),
              nextPageMarker: nextPageMarker,
              pageSize: 25,
              isStream: true,
            ).then((page) {
              _model.pagingController!.appendPage(
                page.data,
                page.nextPageMarker,
              );
              final streamSubscription = page.dataStream?.listen((data) {
                data.forEach((item) {
                  final itemIndexes = _model.pagingController!.itemList!
                      .asMap()
                      .map((k, v) => MapEntry(v.reference.id, k));
                  final index = itemIndexes[item.reference.id];
                  final items = _model.pagingController!.itemList!;
                  if (index != null) {
                    items.replaceRange(index, index + 1, [item]);
                    _model.pagingController!.itemList = {
                      for (var item in items) item.reference: item
                    }.values.toList();
                  }
                });
                setState(() {});
              });
              _model.streamSubscriptions.add(streamSubscription);
            });
          });
          return _model.pagingController!;
        }(),
        padding: EdgeInsets.zero,
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        builderDelegate: PagedChildBuilderDelegate<AnunciosRecord>(
          // Customize what your widget looks like when it's loading the first page.
          firstPageProgressIndicatorBuilder: (_) => Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          ),

          itemBuilder: (context, _, listTodosIndex) {
            final listTodosAnunciosRecord =
                _model.pagingController!.itemList![listTodosIndex];
            return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8.0),
                  shape: BoxShape.rectangle,
                ),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'AnuncioSolo',
                      queryParams: {
                        'anunRef': serializeParam(
                          listTodosAnunciosRecord.reference,
                          ParamType.DocumentReference,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            listTodosAnunciosRecord.fotoAnun!,
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              listTodosAnunciosRecord.tituloAnun!,
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 5.0, 0.0),
                                  child: Text(
                                    listTodosAnunciosRecord.precioAnun!
                                        .toString(),
                                    style: GoogleFonts.getFont(
                                      'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 5.0, 0.0),
                                  child: Text(
                                    listTodosAnunciosRecord.divisaAnun!,
                                    style: GoogleFonts.getFont(
                                      'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
