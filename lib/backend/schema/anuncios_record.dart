import 'dart:async';

import 'package:from_css_color/from_css_color.dart';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'anuncios_record.g.dart';

abstract class AnunciosRecord
    implements Built<AnunciosRecord, AnunciosRecordBuilder> {
  static Serializer<AnunciosRecord> get serializer =>
      _$anunciosRecordSerializer;

  @BuiltValueField(wireName: 'titulo_anun')
  String? get tituloAnun;

  @BuiltValueField(wireName: 'descrip_anun')
  String? get descripAnun;

  @BuiltValueField(wireName: 'foto_anun')
  String? get fotoAnun;

  @BuiltValueField(wireName: 'precio_anun')
  int? get precioAnun;

  @BuiltValueField(wireName: 'divisa_anun')
  String? get divisaAnun;

  @BuiltValueField(wireName: 'fecha_creacion')
  DateTime? get fechaCreacion;

  @BuiltValueField(wireName: 'Nuevo')
  bool? get nuevo;

  @BuiltValueField(wireName: 'Activo')
  bool? get activo;

  @BuiltValueField(wireName: 'propietario_anun')
  DocumentReference? get propietarioAnun;

  @BuiltValueField(wireName: 'categoria_anun')
  DocumentReference? get categoriaAnun;

  @BuiltValueField(wireName: 'subcateg_anun')
  DocumentReference? get subcategAnun;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AnunciosRecordBuilder builder) => builder
    ..tituloAnun = ''
    ..descripAnun = ''
    ..fotoAnun = ''
    ..precioAnun = 0
    ..divisaAnun = ''
    ..nuevo = false
    ..activo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios');

  static Stream<AnunciosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AnunciosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static AnunciosRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      AnunciosRecord(
        (c) => c
          ..tituloAnun = snapshot.data['titulo_anun']
          ..descripAnun = snapshot.data['descrip_anun']
          ..fotoAnun = snapshot.data['foto_anun']
          ..precioAnun = snapshot.data['precio_anun']?.round()
          ..divisaAnun = snapshot.data['divisa_anun']
          ..fechaCreacion = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['fecha_creacion']))
          ..nuevo = snapshot.data['Nuevo']
          ..activo = snapshot.data['Activo']
          ..propietarioAnun =
              safeGet(() => toRef(snapshot.data['propietario_anun']))
          ..categoriaAnun =
              safeGet(() => toRef(snapshot.data['categoria_anun']))
          ..subcategAnun = safeGet(() => toRef(snapshot.data['subcateg_anun']))
          ..ffRef = AnunciosRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<AnunciosRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'anuncios',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  AnunciosRecord._();
  factory AnunciosRecord([void Function(AnunciosRecordBuilder) updates]) =
      _$AnunciosRecord;

  static AnunciosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAnunciosRecordData({
  String? tituloAnun,
  String? descripAnun,
  String? fotoAnun,
  int? precioAnun,
  String? divisaAnun,
  DateTime? fechaCreacion,
  bool? nuevo,
  bool? activo,
  DocumentReference? propietarioAnun,
  DocumentReference? categoriaAnun,
  DocumentReference? subcategAnun,
}) {
  final firestoreData = serializers.toFirestore(
    AnunciosRecord.serializer,
    AnunciosRecord(
      (a) => a
        ..tituloAnun = tituloAnun
        ..descripAnun = descripAnun
        ..fotoAnun = fotoAnun
        ..precioAnun = precioAnun
        ..divisaAnun = divisaAnun
        ..fechaCreacion = fechaCreacion
        ..nuevo = nuevo
        ..activo = activo
        ..propietarioAnun = propietarioAnun
        ..categoriaAnun = categoriaAnun
        ..subcategAnun = subcategAnun,
    ),
  );

  return firestoreData;
}
